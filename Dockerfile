# Folosim imaginea RabbitMQ 4.0.7 cu interfață de management
FROM rabbitmq:4.0.7-management

# Setăm variabila de mediu pentru a prelua configurația definită
ENV RABBITMQ_CONFIG_FILE=/etc/rabbitmq/rabbitmq.conf
ENV RABBITMQ_DEFINITIONS_FILE=/etc/rabbitmq/definitions.json

# Copiem fișierele de configurare în container
COPY config/rabbitmq.conf /etc/rabbitmq/rabbitmq.conf
COPY config/definitions.json /etc/rabbitmq/definitions.json

# Expunem porturile RabbitMQ
EXPOSE 5672 15672

# Pornim RabbitMQ
CMD ["rabbitmq-server"]

