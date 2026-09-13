pipeline {
    agent any

    tools {
        maven 'Maven-3.9'
        jdk 'JDK-17'
    }

    stages {
       stage('Notify Start') {
            steps {
                slackSend channel: '#jenkins-build-ajaytech',
                          color: '#439FE0',
                          message: "STARTED: Job '${env.JOB_NAME}' [Build #${env.BUILD_NUMBER}] has started. (${env.BUILD_URL})"
            }
        }
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/apno1aj/ajaytech.in.git'
            }
        }

        stage('Build & Test') {
            steps {
                sh 'mvn clean test'
            }
        }

        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv('SonarQube-Server') {
                    sh 'mvn org.sonarsource.scanner.maven:sonar-maven-plugin:3.11.0.3922:sonar'
                }
            }
        }

        stage('Quality Gate') {
            steps {
                waitForQualityGate abortPipeline: true
            }
        }

        stage('Package WAR') {
            steps {
                sh 'mvn package'
            }
        }

        stage('Deploy to Tomcat') {
            steps {
                deploy adapters: [tomcat9(credentialsId: 'tomcat-deployer-creds', path: '', url: 'http://172.31.30.195:8080')], 
                       contextPath: 'ajaytech', 
                       war: 'target/ajaytech.war'
            }
        }
    }
        post {
            success {
                slackSend channel: '#jenkins-build-ajaytech',
                      color: 'good',
                      message: "SUCCESS: Job '${env.JOB_NAME}' [Build #${env.BUILD_NUMBER}] completed and deployed! (${env.BUILD_URL})"
        }
            failure {
                slackSend channel: '#jenkins-build-ajaytech',
                      color: 'danger',
                      message: "FAILED: Job '${env.JOB_NAME}' [Build #${env.BUILD_NUMBER}] failed! Check logs: ${env.BUILD_URL}"
        }
    }
}
