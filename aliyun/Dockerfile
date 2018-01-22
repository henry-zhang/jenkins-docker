FROM henryzhang1/jenkins-ci:base
RUN apt-get install python-pip -y 
RUN pip install -U pip 
RUN pip install $(pip search aliyun-python-sdk|grep aliyun-python-sdk|grep -v aliyun-python-sdk-core-v3 |grep -v test|awk '{print $1}') 
CMD ["java","-Duser.timezone=Asia/Shanghai","-jar","/opt/jenkins.war"]
