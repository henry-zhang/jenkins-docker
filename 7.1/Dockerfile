FROM ubuntu
RUN apt-get update &&apt-get install curl vim wget  openjdk-8-jdk mariadb-client-10.0 -y
RUN  wget -O /tmp/17.sh https://releases.rancher.com/install-docker/17.03.sh 
RUN bash /tmp/17.sh
RUN cd /opt &&wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war
RUN add-apt-repository ppa:ondrej/php  ||echo ok 
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4F4EA0AAE5267A6C &&apt-get update &&apt-get install -y php7.1
RUN cd /usr/local/bin &&wget -O phpunit https://phar.phpunit.de/phpunit-6.phar && chmod u+x phpunit
RUN cd /usr/local/bin &&wget -O composer http://getcomposer.org/composer.phar 
RUN  cd /usr/local/bin &&wget -O phpmd http://static.phpmd.org/php/latest/phpmd.phar && chmod u+x *
RUN apt-get clean
CMD ["java","-Duser.timezone=Asia/Shanghai","-jar","/opt/jenkins.war"]
