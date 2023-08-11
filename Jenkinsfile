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
                    // Ejecutar Centos y crear un volumen
                    docker.image('my-centos').run('-it --rm --privileged=true --name ProjectC -p 8080:80 -v C:/Users/mjanampa/Documents/Centos-Docker/web:/var/linuxVolumen ')
                }
            }
        }
    }

post {
        success {
           emailext body: 'Pipeline Completado!', subject: 'Notificación de finalización de Jenkins', to: 'pruebasit-1@saintmary.ed.cr'
        }
	failure {
           emailext body: 'Pipeline No Completado!', subject: 'Notificación de fallo de Jenkins', to: 'pruebasit-1@saintmary.ed.cr'
        }
    }
    
}


