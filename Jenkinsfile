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
           emailext body: 'La tarea ha finalizado con éxito.', subject: 'Tarea completada', to: 'pruebasit-1@saintmary.ed.cr'
        }
	failure {
           emailext body: 'La tarea ha encontrado un error y no se completó correctamente.', subject: 'Fallo en la tarea', to: 'pruebasit-1@saintmary.ed.cr'
        }
    }
    
}


