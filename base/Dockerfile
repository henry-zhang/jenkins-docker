FROM ubuntu
RUN apt-get update &&apt-get install curl -y
RUN  curl https://releases.rancher.com/install-docker/18.06.sh > /tmp/18.sh
RUN apt-get install openjdk-8-jdk mariadb-client-*  -y
RUN bash /tmp/18.sh
RUN apt-get install wget -y
RUN cd /opt &&wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war
RUN apt-get install maven -y
RUN wget https://releases.rancher.com/compose/v0.12.5/rancher-compose-linux-amd64-v0.12.5.tar.gz &&tar xvf  rancher-compose-linux-amd64-v0.12.5.tar.gz&& mv ./rancher-compose-v0.12.5/rancher-compose /usr/bin/ && rm -rf rancher-compose-linux-amd64-v0.12.5*
CMD ["java","-Duser.timezone=Asia/Shanghai","-jar","/opt/jenkins.war"]
