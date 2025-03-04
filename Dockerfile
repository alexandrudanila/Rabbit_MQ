FROM rabbitmq:4.0.7-management

ENV RABBITMQ_CONFIG_FILE=/etc/rabbitmq/rabbitmq.conf
ENV RABBITMQ_DEFINITIONS_FILE=/etc/rabbitmq/definitions.json

COPY config/rabbitmq.conf /etc/rabbitmq/rabbitmq.conf
COPY config/definitions.json /etc/rabbitmq/definitions.json

EXPOSE 5672 15672

CMD ["rabbitmq-server"]

