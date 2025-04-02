pipeline {
    agent any

    environment {
        IMAGE_NAME = "java-docker-app"
        DOCKER_HUB_USER = "tejaswirajendra"
    }

    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/TejaswiRajendra/Docker-java-app-jenkins.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $DOCKER_HUB_USER/$IMAGE_NAME:latest .'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withCredentials([string(credentialsId: 'docker-hub-credentials', variable: 'DOCKER_HUB_TOKEN')]) {
                    sh "echo $DOCKER_HUB_TOKEN | docker login -u tejaswirajendra --password-stdin"
                }

                    sh 'docker push $DOCKER_HUB_USER/$IMAGE_NAME:latest'
                }
            }
        }

        stage('Deploy') {
            steps {
                sh 'docker run --rm $DOCKER_HUB_USER/$IMAGE_NAME:latest'
            }
        }
    }
}

