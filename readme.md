# Technical Assessment

For the assessment, I had the choice to deploy my simple application as a web application and in this case, to deploy the application as an ECS service. Or, I can deploy my simple application is a cli application, and in this case, I will have to deploy the application as a scheduled task that will execute hourly.

I went with the choice of deploying my simple application as a web application and this is because the web application will always be running and will be managed by an ECS Service to maintain desired count and availability.

I have created 7 files and these can be explained as follows:

- index.html : This contains my simple application with "Hello world" observable output.
- Dockerfile : This contains instructions to build my docker image.
- docker-build-and-push.yml: This contain the GitHub Actions workflow to build the Docker image and push it to AWS Elastic Container Registry (ECR)
- deploy.yml : This contains the workflow that builds and packages the simple application as a runnable archive with timestamp artifacts to be uploaded to an S3 bucket.
- ecs-deployment.yml : This contains the CloudFormation template that deploys the Docker image for the simple application on ECS.
- ecs-web-deployment.yml : This contains the CloudFormation template to deploy the web application as an ECS service.
- readme.md : This contains the project documentation.
