FROM henryzhang1/jenkins-ci:base
RUN apt-get install python-pip -y 
RUN pip install -U pip 
RUN pip install awscli --upgrade --user 
ENV PATH=$PATH:~/.local/bin
RUN apt-get install groff -y
RUN echo "complete -C '~/.local/bin/aws_completer' aws" >> ~/.bashrc
RUN wget https://dl.k8s.io/v1.10.3/kubernetes-client-linux-amd64.tar.gz && tar xvf kubernetes-client-linux-amd64.tar.gz && mv kubernetes/client/bin/* /usr/bin/
CMD ["java","-Duser.timezone=Asia/Shanghai","-jar","/opt/jenkins.war"]
