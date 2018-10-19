1. ¿Es necesario especificar el `workdir` en docker?, ¿Porqué?

    `Si, para posicionar el directorio de trabajo y poder ejecutar los comandos desde ese espacio`
    
2. ¿Que hacen los siguientes comandos? 
 -`docker ps` : listar los contenedores prendidos (processing status)
 -`docker pull`: Traer una imagen de docker hub a mi local
 -`docker push` : Enviar una imagen de docker al docker hub
 -`docker rm`: Elimina contenedores
 -`docker rmi`: Elimina imagenes
 -`docker run`: Ejecuta una imagen y crea un contenedor
 -`docker tag`: Versionar la imagen docker
 -`docker search`: buscamos imagenes en la nube
 -`docker login`: Iniciar sesion en docker hub
 -`docker exec`: Nos permite ejecutar comandos en un contenedor
 -`docker build`: Permite construir imagenes en base a un dockergfile
 -`docker inspect`: Inspeccionar contenedores o redes
 -`docker network`: nos permite manejar las redes de nuestras maquinas 


1. ¿Qué es bash? ¿Qué significa?
    > Es un interprete de comandos y un lenguaje de consola
2. ¿Cómo ejecuto un archivo bash?
    > con el comando bash o con ./name_file.sh (con permisos de ejecucio)
3. ¿Qué pasa si no especifico en un `.sh`, la linea `#!/bin/bash`?
    > El interprete no ejecuta linea por linea correctamente, la primera le indica al sistema que programa usar para ejecutar el fichero
4. ¿Se puede cambiar el modo bash (`/bin/bash`) a otro tipo de ejecución?
    > Si, a python, php entre otros, especificando el comando a ejecutar
5. ¿Cómo se envía variables de entorno por Docker CLI y docker-compose?
    > con el flag de enviroment para cli -e, para docker-composer environment y para dockerfile es ENV
    
* ¿Qué sucede si le quito el @?
    > No se visualizará el comando que se esta ejecutando
    
1. ¿Para qué sirve el archivo `Makefile`?
    > Para ejecutar diferentes acciones basados en target
   
2. ¿Qué es un `target` en `Makefile`?
    > Es una accion que ejecutar uno o varios comandos