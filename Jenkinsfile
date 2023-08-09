pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    // Construir la imagen de Docker
                    docker.build('my-centos', '-f /Users/mjanampa/Documents/Centos-Docker/Proyecto-Jen/Dockerfile .')
                }
            }
        }
        stage('Run') {
            steps {
                script {
                    // Ejecutar Centos
                    sh 'docker run -it --rm --privileged=true --name ProjectC -p 8080:80 -v C:/Users/mjanampa/Documents/Centos-Docker/Centos-Apache/web:/var/linuxVolumen my-centos'
                }
            }
        }
    }
}


