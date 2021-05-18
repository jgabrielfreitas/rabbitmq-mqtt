FROM rabbitmq:3-management

ENV RABBITMQ_VERSION=3.8.16

RUN rabbitmq-plugins enable rabbitmq_mqtt
RUN rabbitmq-plugins enable rabbitmq_web_mqtt
RUN rabbitmq-plugins enable rabbitmq_web_stomp
RUN rabbitmq-plugins enable rabbitmq_prometheus

EXPOSE 15672
EXPOSE 15675
EXPOSE 15692
EXPOSE 1883
EXPOSE 8883
EXPOSE 5672