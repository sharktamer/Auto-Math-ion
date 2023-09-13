& "C:\Program Files\Docker\Docker\Docker Desktop.exe"
Write-Output("[INFO] Downloading Jenkins Image ...")
docker pull jenkins/jenkins
Write-Output("[INFO] Creating Bridge Network For Jenkins ...")
docker network create jenkins
Write-Output("[INFO] Démarrage du conteneur sur le port 2376 ...")
docker compose up