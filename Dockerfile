# Se descarga la imagen de CentOS 7
FROM centos:centos7

# Actualizamos los paquetes en la imagen
RUN yum -y update && \
    yum clean all && \
    yum -y install httpd && \
    systemctl enable httpd.service

# Ejecutamos el inicio del contenedor
CMD ["/usr/sbin/init"]
