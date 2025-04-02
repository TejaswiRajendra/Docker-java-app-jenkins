# Java Application Deployment with Docker and Jenkins
## Project Overview

This project demonstrates how to build, containerize, and deploy a simple Java application using Docker and Jenkins. The application prints the current date and time when executed. The entire process is automated through a CI/CD pipeline that pulls the latest code, builds a Docker image, pushes it to Docker Hub, and runs the container.

## Technology Stack

Java (JDK 17)

Docker (Containerization)

Jenkins (CI/CD Automation)

GitHub (Version Control)

Docker Hub (Image Repository)


## **1. Java Application Overview**

The application is a simple Java program that prints the current date and time to the console when executed.

## **2. Dockerization**

The application is containerized using a Dockerfile to ensure consistency across different environments.

## **3. CI/CD Pipeline with Jenkins**

A Jenkins pipeline automates the entire build and deployment process:

**Fetches the latest code** from GitHub.

**Builds a Docker image** and tags it.

**Pushes the image** to Docker Hub.

**Deploys the container** by running it.

## **4. Setup in Jenkins**

### A. Install Required Plugins

Go to Manage Jenkins > Plugin Manager and install:
Pipeline
Docker Pipeline
Git Plugin

### B. Add Docker Hub Credentials

Go to Manage Jenkins > Manage Credentials.

Select Global credentials and click Add Credentials.

Enter Docker Hub username and Personal Access Token (PAT).

Click Save.

### C. Configure Jenkins Job

Create a new Pipeline Job in Jenkins.

Use Pipeline script from SCM with the GitHub repository.

Set the script path to Jenkinsfile and build the job.

## **5. Deployment and Verification**

Once Jenkins completes the pipeline:

The Docker image is built and pushed to Docker Hub.

The application runs inside a Docker container.

To manually test the deployment, run the Docker container locally and verify the output.

## **6. Expected Output**

The application should print the current date and time to the console.

## **7. Conclusion**

This project implements a CI/CD pipeline for a Java application using Docker and Jenkins, ensuring automated builds, deployments, and scalability. It provides a seamless way to deploy Java applications as containers, making it easy to run across different environments with consistency and reliability.
