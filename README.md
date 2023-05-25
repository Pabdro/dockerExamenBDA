# Primer parcial Bases de datos avanzadas 👮🏻‍♂️🚗🏍️⛽

## Información personal
- Nombre: Pablo Alejandro Badani Zambrana
- Código: 55789

## Descripción de la entidad y los requisitos
La Policía Boliviana es la institución encargada de mantener el orden público y garantizar la seguridad ciudadana en Bolivia. Su misión es proteger la vida, la integridad física y los derechos de las personas, así como preservar la paz y el orden en la sociedad. A través de sus diferentes unidades especializadas, la Policía Boliviana realiza labores de prevención del delito, investigación criminal y respuesta a emergencias. 

Lo que nos pide es crear una adquisición de filtros de aceite y de diésel, para vehículos y motocicletas de las direcciones nacionales de la Policía boliviana.

Contraseñas .- qwert

## Diagrama propuesto de Base de datos

![Diagrama adquisicion drawio](https://github.com/Pabdro/dockerExamenBDA/assets/80706043/0a49f608-d36d-4018-b9b7-1d7045a60366)

## Requisitos técnicos
* Docker: Tener el docker desktop instalado (https://www.docker.com/products/docker-desktop/).

* Git: Tener git instalado para luego poder clonar correctamente el repositorio (https://git-scm.com/downloads).

## Cómo levantar localmente
1. Clonar el repositorio:

        git clone <URL_DEL_REPOSITORIO>

2. Dirigirse a la ruta donde clonamos el repositorio:

        cd /ruta/repositorio/clon

3. Levantar el archivo .yml de este repositorio:

        docker-compose -f docker-compose2.yml up

4. Para bajar el servicio se pone lo siguiente:

        docker-compose -f docker-compose2.yml down
