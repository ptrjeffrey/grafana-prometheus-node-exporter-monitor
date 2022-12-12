docker run -d \
 -p 3000:3000 \
 --name=grafana \
 -v ${PWD}/grafana:/var/lib/grafana \
--log-driver=json-file \
--log-opt max-size=100m \
 grafana/grafana
