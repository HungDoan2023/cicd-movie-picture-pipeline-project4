## Project: Movie Picture Pipeline
Movie Picture Pipeline
You are the DevOps engineer for a development team that manages a web application that is a catalog of Movie Picture movies. The team needs to automate its development workflows to accelerate its release cycle. You will use GitHub Actions to automate testing, building, and deploying applications to an existing Kubernetes cluster.

The team's project is comprised of 2 applications.

A frontend UI built written in Typescript, using the React framework
A backend API written in Python using the Flask framework.

### Build CI Pipeline for Frontend
1. Workflow with Github Action (Backend, Frontend)

![](./images/mmp-gha-workflow.png)

2. Frontend CI
![](./images/mpp-run-frontend-ci-successful.png)

![](./images/mpp-run-frontend-eslint-successful.png)

![](./images/mpp-run-frontend-testing-successful.png)

![](./images/mpp-run-frontend-build-push-to-docker-image-successful.png)


### Build CD Pipeline for Frontend
1. Frontend Continuouse Deployment (CD)

![](./images/mpp-run-frontend-deploy-to-eks-successful.png)

![](./images/mpp-push-frontend-image-to-ecr-successful.png)


### Build CI Pipeline for Backend
1. Backend Continuous Integration (CI)
![](./images/mpp-run-backend-ci-successful.png)

![](./images/mpp-run-linting-backend-ci-successful.png)

![](./images/mpp-run-testing-backend-ci-successful.png)


### Build CD Pipeline for Backend
1. Backend Continuous Deployment
![](./images/mpp-run-backend-cd-successful.png)

![](./images/mpp-run-backend-buld-push-to-docker-image-successful.png)

![](./images/mpp-backend-push-docker-image-to-ecr-successful.png)

### Creating, Setting AWS Resources & Github (EKS, ECR, Github)
1. Creating EKS
![](./images/mpp-create-terraform-successful.png)

![](./images/mpp-create-eks-successful.png)

![](./images/mpp-create-eks-nodegroups-successful.png)

![](./images/mpp-eks-access-configuration-successful.png)

2. Creating Github Action User & Secret Environment
![](./images/mpp-create-github-action-user-successful.png)

![](./images/mpp-create-secret-environment.png)


### List out Pods, Services
![](./images/mpp-get-services-pods-from-eks.png)

![](./images/mmp-display-movies-list.png)

![](./images/mmp-get-all-movies.png)

![](./images/mmp-get-movies-by-id.png)

Display Movies List
http://ac61f07fa40ed4cbfaa7c96b0f80270f-513222409.us-east-1.elb.amazonaws.com/

Getting API
http://afc13f8636b4647979521d2e00b20b70-1852970977.us-east-1.elb.amazonaws.com/movies

### Thanks
Thanks Mentors, Coach and the good course so I have a lot of hand-on experience for working on this project. It made me has a good knownledge about CI/CD and how to approach to the appropriate CI/CD pipeline on some specific scenarios.
