# SpringHispano.org

[![Build Status](http://jenkins.artesanos.de/job/springhispano.org-website-deploy/badge/icon)](http://jenkins.artesanos.de/job/springhispano.org-website-deploy/)

Este es el código fuente del sitio de [SpringHispano.org][4]. Antes usábamos Drupal pero se convirtió en un problema cuando recibimos muchos ataques y mantener un CMS fue un problema que no queríamos tener.

Ahora el sitio de construye con [Hugo][1] que realmente necesita archivos [Markdown][3] y la definición de plantillas para generar un sitio estático.

También empezamos a usar [Disqus][6] para los comentarios.

**Si deseas participar, has _fork_, agrega tu entrada y manda un _Pull Request_.**

## Como correr el sitio en tu computadora

1. Haz un clone del repositorio en tu maquina
  * Recomendamos que hagas un fork
2. Instala [Hugo][1]
  - Asegurate que la versión de Hugo sea por lo menos la _0.14_
3. En la raiz del proyecto en una terminal ejecuta:

    ```bash
    rm -rf public && hugo server --watch --verbose 
    ```
    
    Tambien puedes ejecutar el siguiente _shell script_:
    
    ```bash
    ./run.sh
    ```
4. Navega [aquí][2]
5. ¡Disfruta!


## Como crear una nueva entrada
 
 1. Tener instalado [Hugo][1]
 2. En la raiz del proyecto en una terminal ejecuta:
 
 
    ```bash
    hugo new post/el-nombre-de-tu-nueva-entrada.md
    ```
    
    > Es importante que el archivo termine con la extensión __.md__
    
 3. El archivo de tu entrada se localizara en:

   ```
   ./content/post/el-nombre-de-tu-nueva-entrada.md
   ```    
   
   Ahora  puedes editarlo usando [Markdown][3]

 4. Ejecutar el sitio, revisa la sección anterior. Ya debería estar disponible tu nueva entrada.

## Reglas para crear nuevas entradas

- Las entradas deben crearse dentro del directorio  _./content/post/_
- El nombre del archivo debe seguir la siguiente estructura:

   ```
   {año}-{mes}-{dia}-{nombre}.md
   ```    
   
   Ejemplos:

   ```
   2015-09-03-mi-nueva-entrada.md
   ```   
   
   > el nombre del archivo se sugiere que sea breve, pero que indique claramente sobre que se trata.

- Se recomienda que el nombre del archivo no incluya caracteres que no sean _URL encoded_
- Cualquier entrada sobre el ecosistema de [Spring][7] es bienvenida, anímate y mándanos tu pull request !!!

### Front matter

Un _feature_ muy interesante de Hugo es el [_Front Matter_][5], Hugo agrega al inicio del archivo del _post_ algo parecido a lo siguiente:


  ```yaml
  ---
  Section: post
  Categories: 
  - Post
  Description: Segundo por
  date: 2015-09-04
  title: Retomando el camino
  url: /post/retomando-el-camino
  ---
  ```
  
Se debe agregar la información sobre el _post_ lo más detallada posible. Un ejemplo de ello:

  ```yaml
  ---
  Section: post
  Categories: 
  - Post
  Description: Segundo por
  Tags:
  - anuncio
  - comunidad
  date: 2015-09-04
  title: Retomando el camino
  url: /post/retomando-el-camino
  featured_image: /2015/09/03/camino.jpg
  featured_text: Avanzando el camino
  author_id: domix
  author_name: Domingo Suárez Torres
  ---
  ```

#### Autoría

Es muy importante saber quien es el autor del _post_, es por ello es importante que se agregue la información en el campo _author_id_ y _author_name_ del _front matter_.


#### URL

En el _front matter_ se debe poner la información de la URL usando el siguiente patrón:

  ```
  url: {categoria}/{slug}
  ```

  Ejemplo

  ```
  url: /post/retomando-el-camino
  ```
  
 [1]: http://gohugo.io
 [2]: http://localhost:1313/
 [3]: http://daringfireball.net/projects/markdown/
 [4]: http://springhispano.org
 [5]: http://gohugo.io/content/front-matter/
 [6]: https://disqus.com/
 [7]: http://spring.io
