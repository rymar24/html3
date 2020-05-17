#!groovy
// Check ub1 properties
properties([disableConcurrentBuilds()])

pipeline {
    agent { 
        label 'master'
        }
    options {
        buildDiscarder(logRotator(numToKeepStr: '10', artifactNumToKeepStr: '10'))
        timestamps()
    }
    stages {
        stage("Create Docker images") {
            steps {
			sh 'ssh rymar64@13.72.67.146 \'sudo rm -rf html3 && sudo git clone https://github.com/rymar24/html3.git\' '
            }
        }
		stage("Build Docker images") {
            steps {
			sh 'ssh rymar64@13.72.67.146 \'cd html3 && sudo docker build -t deco2 . \''
            }
        }
		stage("RUN Docker images") {
            steps {
			sh 'ssh rymar64@13.72.67.146 \'sudo docker run -d -p 90:80 deco2\''
            }
        }		
    }	
}
