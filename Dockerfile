FROM python:2.7-alpine

COPY ./spark-ui-proxy.py /

ENV SERVER_PORT=80
ENV BIND_ADDR="0.0.0.0"
ENV SPARK_MASTER_HOST=""

EXPOSE 80

ENTRYPOINT ["python", "/spark-ui-proxy.py"]
