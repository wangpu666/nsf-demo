ARG BASE_IMAGE=harbor.qz.sf.163.com/xuxiao/cicd-mvn3.5-jdk8:v2.1.1.1

FROM ${BASE_IMAGE}

ENV TZ=Asia/Shanghai LANG=C.UTF-8 LANGUAGE=C.UTF-8 LC_ALL=C.UTF-8

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

#add application
ADD ./nsf-demo-stock-advisor/target/*.jar /opt/nsf/

ENV JAVA_OPTS=''

CMD java $JAVA_OPTS -jar /opt/nsf/nsf-demo-stock-advisor-1.0-SNAPSHOT.jar
