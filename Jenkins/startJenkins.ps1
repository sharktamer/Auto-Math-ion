Write-Output("[INFO] Téléchargement de l'image jenkins sur docker-hub ...")
docker pull jenkins/jenkins
Write-Output("[INFO] Création d'un réseau bridge pour jenkins ...")
docker network create jenkins
Write-Output("[INFO] Démarrage du conteneur sur le port 2376 ...")
docker run --name jenkins-docker --rm --detach --privileged --network jenkins --network-alias docker --env DOCKER_TLS_CERTDIR=/certs --volume jenkins-docker-certs:/certs/client --volume jenkins-data:/var/jenkins_home --publish 2376:2376 docker:dind