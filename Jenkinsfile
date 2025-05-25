pipeline {
    agent any
    tools{
    jdk 'jdk-17'
    maven 'maven'
}
    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/sudo-atharv/Petclinic.git'
            }
        }
        
        stage('Compile') {
            steps {
                sh "mvn clean compile"
            }
        }
       
       stage('Build') {
            steps {
                sh "mvn clean package  -DskipTests=true"
            }
        } 
        
    }
}
