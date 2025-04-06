pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo "Hello from pipeline"
            }
        }

        stage('Clone Repository') {
            steps {
                git url: 'https://github.com/vitek-borovsky/Jenkins-mock.git', branch: 'main'
            }
        }

        stage('Get tools') {
            steps {
                sh 'sleep 100'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t hello-app .'
                }
            }
        }

        stage('Run and Test App') {
            steps {
                script {
                    def appStdOut = sh(script: 'docker run -d hello-app', returnStdout: true).trim()

                    if (appLogs.contains('Hello World!')) {
                        echo 'App is running correctly!'
                    } else {
                        error 'App failed the test!'
                    }
                }
            }
        }
    }
}
