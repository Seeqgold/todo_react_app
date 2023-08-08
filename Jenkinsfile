pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script{
                    docker.withRegistry('https://registry.example.com',
                    'docker-credentials-id'){
                        def customImage=
                        docker.build("my-custom-image:${env.BUILD_NUMBER}")
                    }
                }
            }
        }
        stage('Run Docker Container'){
            steps{
                scripts{
        docker.image('my-custom-image:${env.BUILD_NUMBER}').withRun('-p 8080:80'))
                }
            }
        }
         stage('push Docker Container'){
            steps{
                scripts{
        docker.push('my-custom-image:${env.BUILD_NUMBER}').withRun('-p 8080:80'))
                }
        }
}
                    }
                }
            }
        }
    }
}
