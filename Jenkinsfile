pipeline {
    agent { label 'localhost' }

    stages {
           stage('Build docker image') {
            steps {
            sh 'docker build -t localhost:8081/devops-info .'
            }
        }
           stage('Push Docker Images to Nexus Registry'){
            steps {
            sh 'docker login -u admin -p 1563b6b-dd00-4e47-a053-81be55b119e1 localhost:8081'
            sh 'docker push localhost:8081/devops-info}' 
            sh 'docker rmi $(docker images --filter=reference="localhost:8081/devops-info*" -q)'
            sh 'docker logout localhost:8081'
            }
        }    
    }
}
