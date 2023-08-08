pipeline 
{
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    // Construir la imagen de Centos
                    docker.build('my-centos', '-f https://github.com/MarkJanampa/Proyecto-Jen.git')
                }
            }
        }
        stage('Run') {
            steps {
                script {
                    // Ejecutar Centos
                    docker.image('my-centos').run('-it --rm --privileged=true --name ProjectC -p 8080:80 -v C:/Users/mjanampa/Documents/Centos-Docker/Centos-Apache/web:/var/linuxVolumen')
                }
            }
        }
    }
}


