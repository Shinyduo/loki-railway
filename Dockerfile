FROM grafana/loki:latest

# Bring in the config
COPY loki-config.yaml /etc/loki/loki-config.yaml

# Expose defaults (Railway will still inject $PORT)
EXPOSE 3100 9096

# Let ${PORT} in YAML expand
CMD ["-config.file=/etc/loki/loki-config.yaml", "-config.expand-env=true"]
