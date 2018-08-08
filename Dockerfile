FROM python:2.7-alpine

COPY ./spark-ui-proxy.py /

ENV SERVER_PORT=80
ENV BIND_ADDR="0.0.0.0"

EXPOSE 80

#ENTRYPOINT /usr/local/bin/python /spark-ui-proxy.py "${SPARK_MASTER_PORT_8080_TCP_ADDR}:${SPARK_MASTER_PORT_8080_TCP_PORT} ${SERVER_PORT}"
ENTRYPOINT /usr/local/bin/python /spark-ui-proxy.py "${SPARK_MASTER_HOST}:${SPARK_MASTER_PORT}" "${SERVER_PORT}"