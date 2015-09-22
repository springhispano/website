---
Section: post
Categories: 
- Screencast
Tags:
- sdkman
- gradle
- video
- vimeo
date: 2015-09-22
title: Introducción a SDKMAN
url: /screencast/2015/09/22/introduccion-a-sdkman
featured_image: /2015/09/22/tools-sdkman.jpg
featured_image_source: https://picjumbo.com/real-mens-tools/
featured_text: Herramientas
author_id: domix
author_name: Domingo Suárez Torres
published: true
---

## La importancia de tener las herramientas ordenadas

Es muy importante tener en nuestro sistema las herramientas adecuadas para trabajar. Tener un _toolkit_ que sea flexible y que permita que podamos elegir aquellas herramientas especificas para el trabajo requerido.

En un ideal taller, ya sea de carpintero, ebanista, pintor, mecánico, etc.; se suelen tener organizada toda la herramienta, para cuando se necesite sea fácilmente accesible. En talleres desordenados, los trabajadores van a invertir tiempo en encontrar la herramienta adecuada.

En el contexto del desarrollo de software, necesitamos también herramientas para trabajar. Dichas herramientas pueden cambiar dependiendo el proyecto. Incluso muchas veces son las mismas, pero de diferente versión. Si tenemos dichas herramientas instaladas en nuestro sistema y cada vez que cambiamos a otro proyecto, procedemos a desinstalar la versión que ya no necesitamos e instalamos la versión que necesitamos. __Es un desastre__. Deberíamos tener una manera sencilla para poder elegir la herramienta adecuada cuando la necesitemos.

## Administradores de versiones

Desde hace mucho tiempo, en otros entornos de desarrollo han propuesto una manera muy sencilla de resolver el problema de tener en el sistema múltiples versiones de alguna herramienta en particular. Estas herramientas son conocidas como _Version Managers_. Ejemplos de ellas son:

* [Ruby Version Manager (RVM)][1]
* [Node Version Manager (NVM)][2]
* [Maven Version Manager (mvnvm)][3]
* [Go Version Manager (GVM)][4]
* [Java Environment (jEnv)][5]
* [SDK Manager aka SDKMAN (antes GVMTool)][6]
* [.NET SDK Manager (DNVM)][7]
* [PHP-Version][8]
* [Python version management (pyenv)][9]

Como podrán apreciar, hay para muchos lenguajes y entornos de desarrollo. La característica que poseen cada uno de ellos, es que permiten fácilmente cambiar la versión de la herramienta en una sesión de _shell_ muy fácilmente. Con una simple instrucción en la linea de comandos estas herramientas se encargarán de establecer los _paths_ adecuados para la sesión actual en el _shell_.

## SDKMan

En este caso particular, quisiera hablar sobre SDKMan, que antes era conocido como GVMTool, el cambio de nombre fue oficial el 17 de septiembre de 2015, porque GVMTool era el nombre corto para _Groovy enVironment Manager Tool_. Pero el autor lo diseño para que fuera agnóstico a Groovy, por ahora soporta:

* [Asciidoctorj][10]
* [Crash][11]
* [Gaiden][12]
* Glide
* [Gradle][13]
* [Grails][14]
* [Griffon][15]
* [Groovy][16]
* [GroovyServ][17]
* [JBake][18]
* [JBossForge][19]
* [Lazybones][20]
* [Spring Boot][21]
* [VertX][22]

Muchas de ellas no son parte del ecosistema Groovy, como _asciidoctorj_, _crash_, _SpringBoot_ ó _jbossforge_. Entonces SDK Manager es una herramienta mucho más genérica para administrar versiones.

Si usas alguna de estas herramientas te recomiendo ampliamente que uses SDKMAN.

## Demostración

Les dejo aquí un video del uso de SDKMAN, espero les sea utíl.

{{% vimeo 140038772 %}}

Saludos


[1]: https://rvm.io
[2]: https://github.com/creationix/nvm
[3]: http://mvnvm.org
[4]: https://github.com/moovweb/gvm
[5]: http://www.jenv.be
[6]: http://sdkman.io
[7]: https://github.com/aspnet/dnvm
[8]: https://github.com/wilmoore/php-version
[9]: https://github.com/yyuu/pyenv
[10]: https://github.com/asciidoctor/asciidoctorj
[11]: http://www.crashub.org
[12]: https://github.com/kobo/gaiden
[13]: http://gradle.org
[14]: https://grails.org
[15]: http://griffon-framework.org
[16]: http://www.groovy-lang.org
[17]: http://kobo.github.io/groovyserv/
[18]: http://jbake.org
[19]: http://forge.jboss.org
[20]: https://github.com/pledbrook/lazybones
[21]: http://projects.spring.io/spring-boot
[22]: http://vertx.io