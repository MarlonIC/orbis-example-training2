* docker run -v $PWD/app:/app --entrypoint=/bin/ls marlonric/orbis-training-docker:2.0.0 -l /app
* Comando para instalar dependencias node en base a un package.json
    > docker run --workdir=/app -v $PWD/app:/app marlonric/orbis-training-docker:2.0.0 npm install
* Exponer dos puertos
    > docker run -p "3030:3030" -p "35729:3030" --workdir=/app -v $PWD/app:/app marlonric/orbis-training-docker:2.0.0 npm start
    
* Exponiendo los dos puertos de remarker
    > docker run -p "1042:1042" -p "35729:35729" --workdir=/app -v $PWD/app:/app marlonric/orbis-training-docker:2.0.0 npm start
* Construyendo de un md a un archivo js y html con remarker
    > docker run --workdir=/app -v $PWD/app:/app marlonric/orbis-training-docker:2.0.0 npm run release  
* Curl para el archivo que genera el remarker
    > docker run --network="orbis-training-project_default" node:10.10.0-slim curl http://orbis-training-docker:1042
* Ejecutando una funcion bash
    > docker run -v $PWD/resources:/resources node:10.10.0-slim bash /resources/example.sh
* Variables ENV   
    > docker run -v $PWD/resources:/resources -e NAME="Harry Potter" node:10.10.0-slim bash /resources/example.sh
* Mostrando mensaje de ejecucion
    > docker run --entrypoint=/bin/echo node:10.10.0-slim "Ejecutando contenedor..."
    
* docker build -t marlonric/jenkins-deploy:0.1.0 docker/jenkins
* docker run --rm -u root -p 8080:8080 -v jenkins-data:/var/jenkins_home marlonric/jenkins-deploy:0.1.0
* Para levantar el jenkis usar el siguiente comando
    * docker run --rm -u root -p 8080:8080 -v jenkins-data:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock marlonric/jenkins-deploy:0.1.0     