# Se descarga la imagen de CentOS 7
FROM centos:centos7

# Actualizamos los paquetes en la imagen y luego limpiamos lo descargado
RUN yum -y install httpd; yum clean all; yum install sudo; yum -y install firefox; systemctl enable httpd.service

# Ejecutamos el inicio del contenedor
CMD ["/usr/sbin/init"]

