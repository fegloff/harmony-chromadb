FROM ghcr.io/chroma-core/chroma:latest

ENV CHROMA_DB_IMPL=clickhouse
ENV CLICKHOUSE_HOST=clickhouse
ENV CLICKHOUSE_PORT=8123

EXPOSE 8000

CMD ["chroma"]