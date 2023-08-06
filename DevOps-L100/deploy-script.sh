#!/bin/bash

# Staging environment

# Create Bucket
aws s3 mb s3://aws-devops-workshop-01-staging

# Enable Public Access
aws s3api put-public-access-block --bucket aws-devops-workshop-01-staging --public-access-block-configuration "BlockPublicAcls=false,IgnorePublicAcls=false,BlockPublicPolicy=false,RestrictPublicBuckets=false"

# Put Buccket Policy
aws s3api put-bucket-policy --bucket aws-devops-workshop-01-staging --policy  file://bucket-policy-staging.json

# Enable Hosting
aws s3 website s3://aws-devops-workshop-01-staging --index-document index.html --error-document 404.html



# PROD environment

# Create Bucket
aws s3 mb s3://aws-devops-workshop-01-prod

# Enable Public Access
aws s3api put-public-access-block --bucket aws-devops-workshop-01-prod --public-access-block-configuration "BlockPublicAcls=false,IgnorePublicAcls=false,BlockPublicPolicy=false,RestrictPublicBuckets=false"

# Put Buccket Policy
aws s3api put-bucket-policy --bucket aws-devops-workshop-01-prod --policy  file://bucket-policy-prod.json

# Enable Hosting
aws s3 website s3://aws-devops-workshop-01-prod --index-document index.html --error-document 404.html



# Create code repository
aws codecommit create-repository --repository-name aws-devops-repo --repository-description "aws-devops workshop repository"

# To list repo
aws codecommit list-repositories --output text