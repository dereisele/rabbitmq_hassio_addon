FROM rabbitmq:3.10-management

LABEL \
  io.hass.version="VERSION" \
  io.hass.type="addon" \
  io.hass.arch="armhf|aarch64|i386|amd64"

RUN rabbitmq-plugins enable --offline rabbitmq_mqtt

EXPOSE 15672
EXPOSE 5672
EXPOSE 1883
