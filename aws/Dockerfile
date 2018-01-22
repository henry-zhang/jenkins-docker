FROM henryzhang1/jenkins-ci:base
RUN apt-get install python-pip -y 
RUN pip install -U pip 
RUN pip install awscli --upgrade --user 
ENV PATH=$PATH:~/.local/bin
RUN apt-get install groff -y
RUN echo "complete -C '~/.local/bin/aws_completer' aws" >> ~/.bashrc
CMD ["java","-Duser.timezone=Asia/Shanghai","-jar","/opt/jenkins.war"]
