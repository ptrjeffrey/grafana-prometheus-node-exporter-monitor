NAME=prometheus
docker stop prometheus
docker rm prometheus
docker run -d --name=${NAME} \
 -p 9090:9090 \
 -v ${PWD}/prometheus.yml:/etc/prometheus/prometheus.yml \
--log-driver=json-file \
--log-opt max-size=100m \
 prom/prometheus
