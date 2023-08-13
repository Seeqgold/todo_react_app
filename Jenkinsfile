pipeline {
    agent any

    environment {
        DOCKER_HUB_CREDENTIALS = 'Docker_credentials'
        IMAGE_NAME = 'myapp'
        IMAGE_TAG = 'latest'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    def dockerImage = docker.build("${IMAGE_NAME}:${IMAGE_TAG}", '.')
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    def containerId = docker.image("${IMAGE_NAME}:${IMAGE_TAG}").run("-p 3000:3000 -d")
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('', DOCKER_HUB_CREDENTIALS) {
                        docker.image("${IMAGE_NAME}:${IMAGE_TAG}").push()
                    }
                }
            }
        }
    }
}