docker run -d -p 9100:9100 \
 -v "/proc:/host/proc:ro" \
 -v "/sys:/host/sys:ro" \
 -v "/:/rootfs:ro" \
--log-driver=json-file \
--log-opt max-size=100m \
 --net="host" \
 prom/node-exporter
