* Con este comando nos ha permitido mastrar todos los archivos pesados
    > `git rev-list --objects --all ` 

* Se ha filtrado el archivo pesado que se proponia eliminar de los objetos de git
    > `git filter-branch --index-filter 'git rm --cached --ignore-unmatch sc.16.tar.gz' -- --all`

* Eliminar la carpeta refs original que se generó
    > `rm -Rf .git/refs/original`

* Eliminar la carpeta logs que se generó
    > `rm -Rf .git/logs/`

* Ejecutamos el comando para empaquetar y reconstruir los objetos segun los cambios actuales con el --prune=now
    > `git gc --aggressive --prune=now`


1. ¿Qué importancia tiene los tags en un proyecto?
    > `Tiene mucha importancia ya que nos permite crear muchas versiones de nuestro proyecto con la finalidad de poder movernos entre cada uno de estos.`  

2. ¿Cuál es la diferencia entre un tag normal y un tag anotado en git?
    > `En  un tag normal podemos especificar el numero de la version y un tag anotado nos permite agregar un cuerpo a la version mediante el flag -a.`

3. ¿Cómo se sube todos los tags de git que hay en mi local?
    > `añadiendo el flag --tags al realizar un git push`

4. ¿Es necesario loguearse cada vez que subo una imagen a dockerhub?
    > `No, solo se logea una vez`

5. ¿Qué es y para qué sirve docker?
    > `Es una plataforma para crear contenedores y sirve para poder crear aplicaciones isoladas.`

6. ¿Cuál es la diferencia entre docker y VirtualBox (virtualización)?
    > `Docker crea una aplicacion (docker machine) que se conecta directamente al Kernel y VirtualBox crea una capa llamada HyperVisor y es ahi donde se ejecutan nuestras aplicaciones.`  

7. ¿Es necesario depender de una imagen de docker base al crear una imagen nueva?
    > `No, no es necesariamente, uno mismo puede crear su propia imagen.`

8. ¿Porqué debo anteponer el nombre de usuario en una imagen docker nueva?
    > `Para al momento de pushear poder reconocer el usuario de DockerHub`

9. ¿Que pasa si creo una imagen sin especificar una versión o tag, con qué versión se crea?
    > `Se crea el tag "latest" por defecto.`
    
    
 
- ¿Porqué es necesario crear un contenedor con esta bandera -it ? ¿Qué pasa si no le pongo -it?
    > `Para poder iniciar el contenedor de forma interactiva y activa la consola TTY del contenedor. Sin -it se levanta el contendor sin acceder de forma interactiva`
- ¿Para qué sirve ejecutar el comando bash al ejecutar una imagen?
    > `Para que al momento de levantar el contenedor acceda de modo interactivo al contenedor mediante la terminal.`

 
- ¿Cuál es la diferencia entre docker ps y docker ps -a?
    > `docker ps nos lista los contenedores ejecutandos y docker ps -a nos lista todos los contenedores prendidos y apagados.`


Listar archivos del contenedor

    `docker run marlonric/orbis-training-docker:0.2.0 ls`

Mostrar el contenido del archivo en el contenedor

    `docker run marlonric/orbis-training-docker:0.2.0 cat preguntas.md` 

---

1. ¿Cuál es la diferencia entre una imagen y un contenedor?
    > `Imagen es la base para levantar uno o muchos contenedor`
2. ¿Cómo listo las imágenes que hay en mi computadora?
    > `Con el comando docker images`
3. ¿Cómo salgo de un contenedor de docker?
    > `Con el comando exit`
4. ¿Se elimina el contenedor al salir de ella?
    > `No se elimina, se apaga el contenedor`
5. ¿Cómo elimino un contenedor?
    > `Con el comando docker rm mas el id del contenedor o el nombre`
6. ¿Para qué es necesario el flag `-i`, `-t`, `--rm`?
    > `-i: Para activar de forma interactiva`
    <br> `-t: Activa la consola TTY del contenedor`
    <br> `-rm: Para eliminar automaticamente el contenedor en caso exista`
7. ¿Cómo verifico que el archivo creado se encuentra en la imagen?
    > `Con docker run {name_image} cat name_file`
8. ¿Cómo se comenta una linea de código en Dockerfile?
    > `Con el simbolo almohadilla #`
    
---
Exponiendo puerto 80 a través del puerto 1080
    
    docker run -d -p 1080:80 marlonric/orbis-training-docker:1.0.0

---
    
1. ¿Qué es NGINX?
    > `Es un servidor web`
2. ¿Cómo expongo puertos en docker?
    > `EXPOSE`
3. ¿Cómo especifico los puertos al levantar un contenedor (docker run)?
gst    > `con la separacion de dos puntos ":", el primer puerto hace referencia al puerto del host y el segundo puerto hace referencia al contenedor`
4. ¿Cómo hago 'forward' al levantar un contenedor (docker run)?
    > `con el flag -p "8080:80"`

---

1. ¿Qué significa el comando -d?
    > Nos sirve para validar si existe un directorio en la sentencia if
2. ¿Porqué la sentencia comienza con @?
    > Para evitar imprimir el comando en consola
3. ¿Para qué sirve el comando mkdir?
    > Para crear un directorio
4. Explicar lo que hace la función mkdir_deploy_dir
    > En base a la sentencia if verifica si no existe el directorio, si no existe la crea con el comando mkdir

---


1. ¿Para qué sirve el uso de \?
    > Nos da un salto de linea
2. ¿Para qué sirve el uso de &&?
    > Para ejecutar otro comando despues del anterior
3. ¿Qué función cumple usar los argumentos -rf?
    > Para eliminar recursivo y forzado
4. Explicar lo que hace la función git_init (linea por linea)
    > Entra al directorio ./deploy/gh-pages, elimina el directorio .git y luego inicializa un nuevo proyecto con git

---

1. ¿Para qué sirve el uso de eval?
    > Evalua y ejecuta un comando de makefile   
2. ¿Para qué sirve el uso de shell?
    > Nos permite ejecutar comandos de shell dentro del entorno de make
3. ¿Para qué sirve el uso de git log --pretty=format:"%an"?
    > Nos permite dar un formato de salida del log, y filtrar por el raw format el author de los commits
4. ¿Cuál es la diferencia en usar git config y git config --global?
    > Con git config nos permite manejar configurariones locales y con --global es configurariones del git 
5. Explicar lo que hace la función git_config (línea por línea)
    > Ejecuta mediante shell el comando git log filtrando por author, obteniendo el primer resultado con el comando head
      y lo almacena en la variable GIT_USER_NAME, ejecuta mediante shell el comando git log filtrando por el email del author,
      obteniendo el primer resultado y guarda en la variable GIT_USER_EMAIL, luego ingresa al directorio ./deploy/gh-pages,
      luego se ejecuta el ccomando git config y se añade el nombre del usuario al repositorio  y luego añade el correo
      
---


1. ¿Para qué sirve el uso de awk?
    > Esta imprimiendo las primeras dos columnas en base a la salida del comando grep
2. ¿Para qué sirve el uso de sed?
    > Para poder reemplazar una cadena sobre coincidencias pasadas respecto al primer parametro
3. ¿Para qué sirve el uso de git log --pretty=format:"%an"?
    > Para mostrar el log del repositorio con el formato '%an' que es por el nombre del autor
4. Explicar lo que hace la función git_add_remote_repository
    > Lista el los repositorios remotos, filtra por el nombre 'origin', filtra por el nombre '(push)',
      con awk muestra po consola las dos primeras columnas de cada linea y guarda el contenido en la
      variable REPOSITORY. Imprime la variable REPOSITORY y el segundo pipe que es el comando 'send' realiza
      con la bandera 's' un reemplazo del segundo parametro sobre el primer parametro y la bandera 'g'
      especifica que se aplicara a todas las coinidencias encontradas, luego con el comando cd se 
      ingresa al directorio ./deploy/gh-pages y añade la url de la variable GIT_REPOSITORY_REMOTE en el 
      listado de repositorios remotos "origin"
      
---

1. Explicar lo que hace la función create_branch_gh_pages
    > Ingresa al directorio ./deploy/gh-pages, crea la rama "gh-pages" y se posiciona sobre ella

---

1. Explicar lo que hace la función copy_files_to_deploy
    > Copia recursivimante (archivos y directorios) del directorio ./deploy/build/* al directorio ./deploy/gh-pages

---

1. Explicar lo que hace la función git_add
    > Se posiciona sobre el directorio ./deploy/gh-pages, añade cambios al stage de git y verifa el estado de
      los archivos agregados al stage
---

1. Explicar lo que hace la función create_commit (línea por línea)
    > Se ejecuta el comando git log filtrando por el formato del mensaje, se obtiene la primera linea,
      y se almacena sobre la variable MESSAGE, luego se posiciona sobre el directorio ./deploy/gh-pages
      y se crea un commit con el mensaje de la variable MESSAGE

---

1. Explicar lo que hace la función git_push (línea por línea)
    > Se posiciona sobre el directorio ./deploy/gh-pages y envia cambios al repositorio de manera forzada de la rama gh-pages

---

1. Explicar lo que hace la función clean_workspace
    > Elimina recursivamente y forzado el directorio ./deploy/gh-pages

---

1. ¿Para qué sirve el uso de ifeq?
    > Para condicionar e igualar dos argumentos que se les pasa
2. ¿Para qué sirve el uso de strip?
    > Para limpiar espacios enetre las cadenas y convertirlos a un solo espacio
3. Explicar lo que hace la función show_deploy_url (línea por línea)
    * almacenar la url del repositorio en la variable GIT_REPOSITORY_REMOTE
    * validar y almacenar la url ssh del repositorio en la variable GIT_REPOSITORY_REMOTE_SSH
    
---

1. ¿Qué hace cada paso?
    > Ejecuta funciones descritas en el archivo make deploy-ghpages.mk

---

1. ¿Que sucede si no volumeo el docker.sock?
    > Que al momento de crear un pipleline y crear un docker en base a un Jenkinsfile,
      no se creará porque el contenedor Jenkins no esta escuchando al sock de Docker 
2. ¿Para que sirve el volumen var/jenkins_home?
    > Para poder almacenar las configuraciones y tareas en la maquina anfitriony no perderlas al momento de reiniciar el sock
3. ¿Puedo cambiar de puerto?
    > El puerto del anfitrion si, pero no el puerto del jenkins
4. ¿Que pasa si no utlizo el usuario root?
    > Jenkins no va a comunicarse con el sock de Docker
5. ¿Còmo instalo make en una imagen?
    > 

---


1. ¿Se puede crear un volúmen desde otro volúmen en docker? ¿Porqué?
    > Si, con el comando --volumen-from
2. ¿Para que sirve el comando docker create -v <dir> --name <container> <image>?
    >
3. ¿Qué hace el comando docker cp ./ <container>:<dir>?
    > Copiar un directorio o archivos hace un contenedr
4. ¿Cómo creo una network usando docker run?
    > 
5. ¿Cómo conecto una network a un container? usando docker run
    > con el flag --network="NAME NETWORK"
6. ¿Qué hace docker run -it --rm --volumes-from <container> -w <dir> <image> <command>?
    * it: forma interactiva
    * --rm: Elimina si existe el contenedor y crea uno nuevo
    * --volumnes-from: Monta directorio desde un contenedor a otro contenedor

---


1. ¿Qué significa el argumento s3?
    > Argumento para espeficiar el servicio de aws a usar
2. ¿Qué significa el argumento --delete?
    > Si en caso existe el bucket, elimina su contenido y vuelve a crear
3. ¿Qué significa el argumento --acl?
    > Provee permisos para el bucket
4. ¿Qué significa el argumento --region?
    > Se especifica la region donde se va a crear el bucket
5. ¿Para qué sirve el comando aws?
    > Para administrar los servicios de AWS mediante consola
6. Explicar lo que hace la función deploy_bucket
    > Sincroniza la carpeta local ./deploy/build en el bucket dev--orbis-training/marlon.inga, si existe el bucket lo elimina, luego crea el repositorio publico con el permiso de lectura, crea el bucket en la region eu-west-1   

---

1. Explicar lo que hace la función show_deploy_url
    > Muestra la url donde se ha desplegado el proyecto
    
---
1. ¿Qué hace cada paso?
    * Se ejecuta la funcion deploy_bucket 
    * Se ejecuta la funcion show_deploy_url
 
---
1. Explicar lo que hace el target stack.deploy
    > Ejecuta la funcion get_user_name, el argumento cloudformation nos crea una infraestructura para una applicacion,
    el flag template-file crea la infraestructura de acuerdo a un archivo template,
    el flag --stack--name define un nombre al stack,
    el flag --parameter-override define los parametros de configuracion para los servicios,
    el flag --capabilities 
    el flag --region define donde se va desplegar la infraestructura

---
1. Explicar lo que hace el target stack.delete
    > elimina un stac pasando como parametros el nombre del stack y la region en la que se encuentra
---
1. Explicar lo que hace esta sección de cloudformation
    > En Mappings define variables enviroment dev, pre y prod con sus respectivas regiones
    En Parameteres se definen al propietario, el nombre del servicio, las variables env para las regiones,
    el nombre del usuario, el nombre del bucket donde se almacena el zip del codigo lambda y el path del bucket
    s3 donde tambien se almacena el zip del codigo lambda. Y conditions se realizacon condiciones
    como IsProd: !Equals ["prod", !Ref Environment]
---
1. Explicar lo que hace el tipo de recurso AWS::DynamoDB::Table
    > 
---
1. Explicar lo que hace el tipo de recurso AWS::ApiGateway::RestApi
    >
---
1. Explicar lo que hace el tipo de recurso AWS::IAM::Role
    >
---
1. Explicar lo que hace el tipo de recurso AWS::Serverless::Function
    >
2. ¿Porqué se usa la sección Environment y en que casos se recomienda usarla?
    >
---
1. Explicar lo que hace el tipo de recurso AWS::Lambda::Permission
    >
---
1. Explicar lo que hace el tipo de recurso AWS::ApiGateway::Stage
    >
---
1. Explicar lo que hace el tipo de recurso AWS::ApiGateway::Deployment
    >
---
1. Explicar lo que hace el tipo de recurso AWS::ApiGateway::Resource
    >
---
1. Explicar lo que hace el tipo de recurso AWS::ApiGateway::Method
    >
2. ¿Porqué se usa DependsOn?
    >
---
1. Explicar lo que hace la sección Outputs
    >
---
1. Explicar por que se debe hacer el Deploy API.
    >