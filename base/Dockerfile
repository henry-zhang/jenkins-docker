FROM ubuntu
RUN apt-get update &&apt-get install curl -y
RUN  curl https://releases.rancher.com/install-docker/17.03.sh > /tmp/17.sh
RUN apt-get install openjdk-8-jdk mariadb-client-10.0  -y
RUN bash /tmp/17.sh
RUN apt-get install wget -y
RUN cd /opt &&wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war
CMD ["java","-Duser.timezone=Asia/Shanghai","-jar","/opt/jenkins.war"]
