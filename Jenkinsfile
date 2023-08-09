pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    // Clonar el repositorio desde GitHub
                    sh 'git clone https://github.com/MarkJanampa/Proyecto-Jen.git'
                    
                    // Mover al directorio del repositorio
                    sh 'cd Proyecto-Jen'
                    
                    // Construir la imagen de Centos
                    sh 'docker build -t my-centos -f Dockerfile .'
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


