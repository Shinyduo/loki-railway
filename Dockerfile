# grafana/loki image
FROM grafana/loki:latest

# Copy config
COPY loki-config.yaml /etc/loki/loki-config.yaml

# Expose default ports (Railway will still inject $PORT at runtime)
EXPOSE 3100 9096

# Enable env expansion so ${PORT} works inside the YAML
CMD ["-config.file=/etc/loki/loki-config.yaml", "-config.expand-env=true"]
