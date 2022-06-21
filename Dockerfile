FROM rabbitmq:3-management-alpine
LABEL org.opencontainers.image.source https://github.com/unal-swarch-2022i-1A/firma_mq
ENV RABBITMQ_DEFAULT_USER="firma_mq"
ENV RABBITMQ_DEFAULT_PASS="[R6mF+wkA^9Re)"
# The EXPOSE instruction does not actually publish the port. It functions as a type of documentation between the person who builds the image and the person who runs the container, 
EXPOSE 5672 15672