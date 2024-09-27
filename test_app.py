from fastapi.testclient import TestClient 
from app import app 
 
client = TestClient(app) 
 
def test_read_main(): 
    response = client.get("/") 
    assert response.status_code == 200 
    assert response.json() == {"message": "Hello Groq API!"} 
 
def test_chat(): 
    response = client.post("/status", json={"prompt": "What is AI?"}) 
    assert response.status_code == 200 
    assert response.json() == {"response": "You asked: What is AI?"} 
 
