### Implementación de un software para el registro de clientes en la empresa planeadores (RDCEP)
### SENA
#### Version 1.0

#### Historial de Revisión
|   Fecha     |  Versión  |  Descripción                  |   Autor   |
|-------------|:---------:|:-----------------------------:|----------:|
| 15-11-2019  |    1.0    |  Primera versión del software | Jhan      |
|             |           |                               | Cristian  |
|             |           |                               | Zohair    |
|             |           |                               | Oliver    |

### Especificación de Requerimientos
#### 1.	Introducción
La siguiente Especificación de Requerimientos de Software (SRS) del sistema a construir, surge con la finalidad de proveer toda la información de lo que quiere el cliente que haga el software. Tales requerimientos y requisitos  son la base a la hora de comenzar el desarrollo del Software. En este caso el software a desarrollar es un software para el registro de clientes en la empresa Planeadores.
##### 1.1	Propósito
El propósito de este documento es describir lo acordado con el cliente y desarrollar el paso a paso para crear el software que servirá para registrar a los clientes en la empresa planeadores haciendo más eficaz llevar el registro de personas.
##### 1.2	Alcance
El sistema será un programa de escritorio que ayudara a los trabajadores de la empresa Planeadores a llevar un mejor registro de sus clientes y ser más eficaz al momento de buscar y mostrar la informacion del cliente además de otras funciones que se encuentran detalladas en la sesión de requisitos. Este sistema dará apoyo a los siguientes procesos:
*	Registro de clientes
*	Control y organización de los clientes.

##### 1.3	Definiciones, Acrónimos, y Abreviaturas
* **Backup:** Las copias de seguridad en un sistema informático tienen por objetivo el mantener la información de recuperación de la información ante posibles pérdidas.

*	**Interfaz:** Permite la comunicación entre el usuario y el sistema  Para observar los campos necesarios a llenar para el registro.

*	**BD:** Base de Datos  es un conjunto de datos pertenecientes a un mismo contexto y almacenados	  sistemáticamente  para su posterior uso.

*	**Requerimientos funcionales (RF):** describen las capacidades o funciones que el sistema será capaz de realizar.

*	**Requerimientos no funcionales (RNF):** restricciones o características que de delimitan el sistema, como por ejemplo, rendimiento, interfaces de usuario, fiabilidad, seguridad, portabilidad, normas, entre otros.
* **Requerimientos de interfaz de usuario (RIU):** describen lo que el usuario (administrador) vera finalmente.

*	**Programa de escritorio:** Una aplicación de escritorio es aquella que se encuentra instalado en el ordenador o sistema de almacenamiento (USB) y podemos ejecutarlo sin internet en nuestro sistema operativo.

##### 1.4	Referencias
* [Base de Datos](https://es.wikipedia.org/wiki/Base_de_datos)
* [Aplicacion de Escritorio](https://es.wikipedia.org/wiki/Aplicaci%C3%B3n_de_escritorio)
* [Requerimientos no Funcionales](https://es.wikipedia.org/wiki/Requisito_no_funcional)

##### 1.5	Apreciación Global
En la primera parte de este documento, se ha presentado una corta introducción al mismo y al proyecto en sí. En el siguiente capítulo observara la perspectiva del proyecto, con sus funciones, especificaciones y características del proyecto mismo y de sus futuros usuarios.
En el capítulo 3 se presenta una especificación detallada de requerimientos que son necesarios para el desarrollo e implementación del diseño de regristro de clientes y objetos para el software.

#### 2. Descripción General
##### 2.1	Perspectivas del Producto
Con este sistema se espera una mejora en el registro de clientes.
Este producto será un arma contra inconvenientes en los registros de los clientes de la empresa Planeadores.

##### 2.2	Funciones del Producto
**Este software cumplirá con las siguientes funciones:**

*	Registro de Clientes.
*	Generar reportes.
*	Acceder a los registros guardados en la base de datos.

##### 2.3	Características de Usuario
Las personas que interactuaran con este sistema son personas encargadas de crear planeaciones que posteriormente serán entregadas a los clientes (Implementación de un software para el registro de los clientes en la empresa Planeadores) (**RDCEP**).

##### 2.4	Restricciones
Presupuesto para la creación del sistema, recursos, tiempo de desarrollo.

##### 2.5	Atención y Dependencias
El sistema será un apoyo para los registros de los clientes de la empresa,consiguiendo con esto una mejor organización y mas seguridad de los datos registrados.


#### 3.	Requerimientos Específicos
##### 3.1	Requerimientos Funcionales
|Implementación de un software para el registro de clientes en la empresa planeadores                     |
|---------------------------------------------------------------------|
|               SRS – Especificación de Requerimientos                |

|    Código  |   Nombre       |    Fecha     |   Grado Necesidad      |
|------------|:--------------:|:------------:|-----------------------:|
|    RF-001  |MÓDULO DE LOGIN | 15-11-2019   |          Alto          |

| Descripción  |  Al sistema solo accederá personal autorizado por el administrador, quien asignará los roles a los usuario   |
|--------------|------------------------------------------------------|
