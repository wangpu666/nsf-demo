ARG BASE_IMAGE=harbor.cloud.netease.com/qztest/cicd-mvn3.5-jdk8:v2.1.1

FROM ${BASE_IMAGE}

ENV TZ=Asia/Shanghai LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

#add application jar
ADD ./nsf-demo-stock-advisor/target/*.jar /opt/nsf/

ENV JAVA_OPTS='-javaagent:/root/.nsf/agent/nsf-boot.jar  -Dnsf.type=http  -Dnsf.nsfServer=http://nsf-server.qz.sf.163.com  -Dnsf.application.name=nsf-demo-advisor  -Dnsf.application.version=0.0.1  -Dnsf.application.projectCode=wp-test  -Dnsf.application.projectEnv=prod  '

CMD java $JAVA_OPTS -jar /opt/nsf/nsf-demo-stock-advisor-1.0-SNAPSHOT.jar
