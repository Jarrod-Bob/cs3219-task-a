FROM centos:7
# Install epel repo to get nginx and install nginx
RUN yum -y install epel-release && \
    yum -y install nginx
# add local configuration files into the image
ADD /nginx-conf /etc/nginx
EXPOSE 80 443
CMD ["nginx"]