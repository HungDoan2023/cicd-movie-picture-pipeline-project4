## Project: Movie Picture Pipeline
Movie Picture Pipeline
You are the DevOps engineer for a development team that manages a web application that is a catalog of Movie Picture movies. The team needs to automate its development workflows to accelerate its release cycle. You will use GitHub Actions to automate testing, building, and deploying applications to an existing Kubernetes cluster.

The team's project is comprised of 2 applications.

A frontend UI built written in Typescript, using the React framework
A backend API written in Python using the Flask framework.

### Build CI Pipeline for Frontend
1. Workflow with Github Action (Backend, Frontend)

![](./new_images/mpp-cicd-github-action.png)

2. Frontend Continue Integraiton (CI)
Overview
![](./new_images/mpp-frontend-ci-overview.png)

Workflow
![](./new_images/mpp-frontend-ci-workflow.png)

Linting Job
![](./new_images/mpp-frontend-ci-linting.png)

Unit Test Job
![](./new_images/mpp-frontend-ci-unit-testing.png)

Build, Push image to Amazone ECR Job
![](./new_images/mpp-frontend-ci-build-push-image-ecr.png)


### Build CD Pipeline for Frontend
1. Frontend Continue Deployment (CD)

Overview
![](./new_images/mpp-frontend-cd-overview.png)

Workflow
![](./new_images/mpp-frontend-cd-workflow.png)

Build, Push image to Amazone EKS
![](./new_images/mpp-frontend-cd-deploy-image-eks.png)


### Build CI Pipeline for Backend
1. Backend Continuous Integration (CI)
Overview
![](./new_images/mpp-backend-ci-overview.png)

Workflow
![](./new_images/mpp-backend-ci-workflow.png)

Linting Job
![](./new_images/mpp-backend-ci-linting.png)

Unit Testing Job
![](./new_images/mpp-backend-ci-unit-testing.png)

Build, Push image to Amazone ECR
![](./new_images/mpp-backend-ci-build-push-image-ecr.png)

![](./new_images/mpp-backend-ci-build-push-image-ecr-1.png)


### Build CD Pipeline for Backend
1. Backend Continue Deployment (CD)
Overview
![](./new_images/mpp-backend-cd-overview.png)

Workflow
![](./new_images/mpp-backend-cd-workflow.png)

Deploy docker image to Amazone EKS
![](./new_images/mpp-backend-cd-deploy-image-eks.png)

### Creating, Setting AWS Resources & Github (EKS, ECR, Github)
1. AWS Resources
VPC
![](./new_images/mpp-vpc-created.png)

EC2
![](./new_images/mpp-ec2-created.png)

LoadBalancer
![](./new_images/mpp-loadbalancer-created.png)

![](./new_images/mpp-loadbalancer-1.png)

![](./new_images/mpp-loadbalancer-2.png)

SecurityGroup
![](./new_images/mpp-securitygroup-created.png)


Terraform init, apply
![](./new_images/mpp-terraform-init-apply.png)

![](./new_images/mpp-terraform-init-apply-successful.png)

Amazone EKS
![](./new_images/mpp-eks-created.png)

Node Groups
![](./new_images/mpp-eks-node-groups.png)

IAM Access Entries
![](./new_images/mpp-eks-access-iam-access-entries.png)

Amazone ECR
![](./new_images/mpp-ecr-created.png)

ECR Repositories
![](./new_images/mpp-ecr-created-new.png)

ECR Backend Image
![](./new_images/mpp-ecr-frontend-image-create-new.png)

ECR Frontend Image
![](./new_images/mpp-ecr-backend-image-create-new.png)


1. Creating Github Action User & Secret Environment
User Github Action
![](./new_images/mpp-user-created.png)

User Policy
![](./new_images/mpp-add-user-policy.png)


### List out Pods, Services
List out Services, Deployments, Pods
![](./new_images/mpp-list-out-services-pods-deployments-new.png)

Describe Deployment Backend
![](./new_images/mpp-describe-deployment-mpp-backend-new.png)

Describe Deployment Frontend
![](./new_images/mpp-describe-deployment-mpp-frontend-new.png)

### Demo
1. Frontend UI
![](./new_images/mpp-display-frontend-new.png)

2. Backend API
![](./new_images/mpp-display-api-backend-new.png)

![](./new_images/mpp-display-api-backend-1-new.png)

3. Display Movies List<br>
http://a1e268f436d724583bf9fae1863da944-176110451.us-east-1.elb.amazonaws.com/

4. Getting API<br>
http://aec88c58774b647cfa4ea8cbc2cb8dcd-977072735.us-east-1.elb.amazonaws.com/movies<br>

http://aec88c58774b647cfa4ea8cbc2cb8dcd-977072735.us-east-1.elb.amazonaws.com/movies/123<br>

### Thanks
Thanks Mentors, Coach and the good course so I have a lot of hand-on experience for working on this project. It made me has a good knownledge about CI/CD and how to approach to the appropriate CI/CD pipeline on some specific scenarios.

