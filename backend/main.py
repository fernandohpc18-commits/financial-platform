from fastapi import FastAPI

app = FastAPI(title="Financial Platform")

@app.get("/api/health")
def health():
    return {"status": "ok"}
