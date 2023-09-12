Write-Output("[INFO] Téléchargement de l'image jenkins sur docker-hub ...")
docker pull jenkins/jenkins
Write-Output("[INFO] Création d'un réseau bridge pour jenkins ...")
docker network create jenkins
Write-Output("[INFO] Démarrage du conteneur sur le port 2376 ...")
docker compose up .