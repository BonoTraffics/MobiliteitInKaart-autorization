FROM ghcr.io/cerbos/cerbos:latest

COPY .cerbos.yaml /app/.cerbos.yaml

COPY policies /app/policies

WORKDIR /app

EXPOSE 3592 3593

CMD ["server", "--config=/app/.cerbos.yaml"]
