#!/bin/bash

# URL de l'API
URL="http://localhost:5000/chat"

# Données JSON à envoyer
DATA='{"prompt":"What is a LLM?"}'

# Requête POST avec curl
curl -X POST $URL \
-H "Content-Type: application/json" \
-d "$DATA"
