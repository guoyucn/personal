pipeline {
    agent {
        docker {
            image 'maven:3-alpine'
            args '-v /root/.m2:/root/.m2'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
        stage('Run') {
            steps{
                sh 'java -cp target/datacentric-1.0-SNAPSHOT.jar HelloWorld'
            }
        }
    }
}