FROM henryzhang1/jenkins-ci:base
COPY docker-ce-17.03.sh /tmp/
RUN bash /tmp/docker-ce-17.03.sh 
ARG VERSION=3.16 
ARG AGENT_WORKDIR=/home/jenkins/agent  
RUN echo " curl --create-dirs -sSLo /usr/share/jenkins/slave.jar https://repo.jenkins-ci.org/public/org/jenkins-ci/main/remoting/${VERSION}/remoting-${VERSION}.jar \   && chmod 755 /usr/share/jenkins \   && chmod 644 /usr/share/jenkins/slave.jar  "
RUN mkdir -p  /usr/share/jenkins/ &&curl --create-dirs -sSLo /usr/share/jenkins/slave.jar https://repo.jenkins-ci.org/public/org/jenkins-ci/main/remoting/${VERSION}/remoting-${VERSION}.jar 
RUN  chmod 755 /usr/share/jenkins &&ls /usr/share/jenkins/  && chmod 644 /usr/share/jenkins/slave.jar  
ENV AGENT_WORKDIR=${AGENT_WORKDIR} 
RUN mkdir -p /home/jenkins/.jenkins && mkdir -p ${AGENT_WORKDIR}  
VOLUME /home/jenkins/.jenkins 
VOLUME ${AGENT_WORKDIR} 
WORKDIR /home/jenkins
LABEL Description="This is a base image, which allows connecting Jenkins agents via JNLP protocols" Vendor="Jenkins project" Version="3.16"  
COPY jenkins-slave /usr/local/bin/jenkins-slave  
ENTRYPOINT ["jenkins-slave"]
