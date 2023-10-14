import chromadb
import chromadb.config
from chromadb.server.fastapi import FastAPI

settings = chromadb.config.Settings(allow_reset=True)
server = FastAPI(settings)
app = server.app()
