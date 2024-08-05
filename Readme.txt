# Proyecto de Automatizacion API con Karate

Este proyecto es de automatización de pruebas de API utilizando el framework Karate con proyecto Maven.

## Estructura del Proyecto:
- src/test/java:
  	- features: Contiene las definiciones de las pruebas.
    - KarateRunner.java: Clase que ejecuta las pruebas definidas en los archivos .feature.

- src/test/resources: Contiene los archivos de recursos utilizados en las pruebas.
 	- data: Contiene los archivos JSON utilizados como datos de prueba.

## Requisitos Previos:
- Java 8 o superior
- Apache Maven 3.6.0 o superior
- IntelliJ IDEA o Eclipse IDE

## Configuración del Proyecto:
1. Clonar el repositorio:git clone <URL_DEL_REPOSITORIO>
2. Navegar al directorio del proyecto: cd demoblaze-api
3. Compilar el proyecto utilizando Maven: mvn clean install

## Ejecución de Pruebas:
Para ejecutar las pruebas de Karate, sigue los siguientes pasos:
1. Abrir IntelliJ IDEA o Eclipse IDE.
2. Importar el proyecto Maven.
3. Navegar a src/test/java/features/KarateTest.java.
4. Ejecutar la clase KarateTest.

### Desde la línea de comandos
1. Navegar al directorio del proyecto: cd <NOMBRE_DEL_PROYECTO>
2. Ejecutar las pruebas utilizando Maven: mvn test -Dtest=KarateRunner
3. El sistema genera un cucumber reporte "overview-features.html"


