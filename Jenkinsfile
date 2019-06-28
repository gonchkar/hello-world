pipeline {
    agent any
    stages {
        stage ('Compile Stage') {
            steps {
                withMaven(maven : 'my-maven') {
                    sh 'mvn clean compile'
                }
            }
        }
        stage ('Testing Stage') {
            steps {
                withMaven(maven : 'my-maven') {
                    sh 'mvn test'
                }
            }
        }
        stage ('Deployment Stage') {
            steps {
                withMaven(maven : 'my-maven') {
                    sh 'mvn package'
                }
            }
        }
		stage('Test') {
            steps {
				withMaven(maven : 'my-maven'){
                sh 'mvn test'
				}
            }
            post {
                always {
                    junit 'server/target/surefire-reports/*.xml'
                }
            }
        }
    }
}






