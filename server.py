import chromadb
import chromadb.config
from chromadb.server.fastapi import FastAPI

settings = chromadb.config.Settings(
    chroma_db_impl = 'clickhouse',
    clickhouse_host ='clickhouse',
    clickhouse_port = 8123 
)

server = FastAPI(settings)
app = server.app()