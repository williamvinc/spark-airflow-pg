FROM apache/airflow:2.9.3-python3.11

USER root
RUN apt-get update && \
    apt-get install -y gcc python3 default-jdk && \
    apt-get clean

# Set JAVA_HOME environment variable
#ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-arm64
ENV JAVA_HOME /usr/lib/jvm/default-java

USER airflow

RUN pip install apache-airflow apache-airflow-providers-apache-spark pyspark