#!/bin/bash
docker build -t spark-ui-proxy:0.1 .
docker tag spark-ui-proxy:0.1 davetuner/spark-ui-proxy:0.1
docker push davetuner/spark-ui-proxy:0.1