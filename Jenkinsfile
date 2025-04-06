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

        stage('Run and Test App') {
            steps {
                script {
                    def appStdOut = sh(script: ' ./app.sh', returnStdout: true).trim()

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
