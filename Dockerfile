# Se descarga la imagen de CentOS 7
FROM centos:centos7

# Actualizamos los paquetes en la imagen
RUN yum -y update && \
    yum -y install httpd && \
    yum -y install sudo && \
    yum -y install firefox && \
    yum clean all && \
    systemctl enable httpd.service

# Ejecutamos el inicio del contenedor
CMD ["/usr/sbin/init"]
