# Utiliser une image Python légère
FROM python:3.9-slim

# Créer un répertoire de travail
WORKDIR /app

# Copier les fichiers requirements.txt dans le conteneur
COPY requirements.txt . /app/

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste des fichiers d'application
COPY . /app

# Exposer le port sur lequel FastAPI sera servi
EXPOSE 5000

# Définir la commande pour exécuter l'application FastAPI
CMD ["uvicorn", "mini-croq:app", "--host", "0.0.0.0", "--port", "5000"]
