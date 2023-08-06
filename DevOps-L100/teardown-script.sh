
aws s3 rm s3://aws-devops-workshop-01-staging --recursive
aws s3 rb s3://aws-devops-workshop-01-staging


aws s3 rm s3://aws-devops-workshop-01-prod --recursive
aws s3 rb s3://aws-devops-workshop-01-prod


aws codecommit  delete-repository --repository-name aws-devops-repo

aws codepipeline delete-pipeline --name aws-devops-repo