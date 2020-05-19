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
1.


|**Implementación de un software para el registro de clientes en la empresa planeadores**                         |
|-------------------------------------------------------|
|**SRS – Especificación de Requerimientos**

|    Código  |   Nombre       |    Fecha     |   Grado Necesidad      |
|------------|:--------------:|:------------:|-----------------------:|
|    RF-001  |MÓDULO DE LOGIN | 15-11-2019   |          Alto          |
| **Entradas**     |**Fuente**|**Salida**|**Destino**|
|Datos personales(Usuario y  contraseña)|Base de datos |Interfaz principal(Registro de clientes)|Base de datos(registro de quien accede)  
|**Restricciones**|
|Solo se accederá a ciertos módulos del sistema según el rol del usuario|

|  **Descripción:**|Al sistema solo accederá personal autorizado por el administrador, quien asignará los roles a los usuario                         |
|--------------------------|-------------------------|
|**Proceso:**|**•	Ingresar nombre y contraseña de usuario y elegir rol para Iniciar sesión.Cabe aclarar que el usuario previamente se encuentra en la base de datos del sistema**|
|**Efecto Colateral:**|**Errar la contraseña o nombre de usuario niega el ingresó a la aplicación web.**|

2.


|**Implementación de un software para el registro de clientes en la empresa planeadores**                         |
|-------------------------------------------------------|
|**SRS – Especificación de Requerimientos**

|    Código  |   Nombre       |    Fecha     |   Grado Necesidad      |
|------------|:--------------:|:------------:|-----------------------:|
|    RF-003  |LISTA DE CLIENTES REGISTRADOS | 15-11-2019   |          Alto          |
| **Entradas**     |**Fuente**|**Salida**|**Destino**|
|Datos personales: Identificación, Nombres, Apellidos,ETC.| Formulario de Registro para cliente|Cliente registrado|Base de Datos   
|**Restricciones**|
|Un cliente solo se puede registras una vez|

|  **Descripción:**|El sistema debe permitir el registro de clientes                        |
|--------------------------|-------------------------|
|**Proceso:**|**•	Recolección datos básicos personales (nombre, apellido, celular etc.).<br>•	Registro de cliente**|
|**Efecto Colateral:**|**registrar con un cliente ya registrado**|

3.


|**Implementación de un software para el registro de clientes en la empresa planeadores**                         |
|-------------------------------------------------------|
|**SRS – Especificación de Requerimientos**

|    Código  |   Nombre       |    Fecha     |   Grado Necesidad      |
|------------|:--------------:|:------------:|-----------------------:|
|    RF-002  |REGISTRO DE CLIENTES | 15-11-2019   |          Alto          |
| **Entradas**     |**Fuente**|**Salida**|**Destino**|
|Ninguna|Base de datose|Lista de los usuarios registrados|Interfaz que permite visualizar el listado de los clientes registrados en la base de datos   
|**Restricciones**|
|Ninguna|

|  **Descripción:**|El sistema tendrá una interfaz que permita visualizar el listado de los clientes registrados en la base de datos                       |
|--------------------------|-------------------------|
|**Proceso:**|**El usuario del sistema deberá solicitar la información del cliente para poder visualizarla.**|
|**Efecto Colateral:**|**El cliente ya está registrado en la base de datos**|

4.


|**Implementación de un software para el registro de clientes en la empresa planeadores**                         |
|-------------------------------------------------------|
|**SRS – Especificación de Requerimientos**

|    Código  |   Nombre       |    Fecha     |   Grado Necesidad      |
|------------|:--------------:|:------------:|-----------------------:|
|    RF-004  |OBSERVACIONES  | 15-11-2019   |          Alto          |
| **Entradas**     |**Fuente**|**Salida**|**Destino**|
|Descripción de Anotación o queja|Cliente|Queja registrada |Base de datos  
|**Restricciones**|
|Ninguna|

|  **Descripción:**|Los clientes podrán indicar sus peticiones y quejas referentes a las planeaciones entregadas.                     |
|--------------------------|-------------------------|
|**Proceso:**|**•	El cliente debe informar al usuario su .**|
|**Efecto Colateral:**|**Ninguno**|

5.


|**Implementación de un software para el registro de clientes en la empresa planeadores**                         |
|-------------------------------------------------------|
|**SRS – Especificación de Requerimientos**

|    Código  |   Nombre       |    Fecha     |   Grado Necesidad      |
|------------|:--------------:|:------------:|-----------------------:|
|    RF-005  |USABILIDAD   | 15-11-2019   |          Alto          |


|  **Descripción:**|Los clientes podrán indicar sus peticiones y quejas referentes a las planeaciones entregadas.                     |
|--------------------------|-------------------------|


6.


|**Implementación de un software para el registro de clientes en la empresa planeadores**                         |
|-------------------------------------------------------|
|**SRS – Especificación de Requerimientos**

|    Código  |   Nombre       |    Fecha     |   Grado Necesidad      |
|------------|:--------------:|:------------:|-----------------------:|
|    RF-006  |ESCALABILIDAD   | 15-11-2019   |          Alto          |


|  **Descripción:**|El diseño del software soportará el incremento de volumen de operaciones sin necesidad de modificar el código fuente.                    |
|--------------------------|-------------------------|

7.


|**Implementación de un software para el registro de clientes en la empresa planeadores**                         |
|-------------------------------------------------------|
|**SRS – Especificación de Requerimientos**

|    Código  |   Nombre       |    Fecha     |   Grado Necesidad      |
|------------|:--------------:|:------------:|-----------------------:|
|    RF-007  |DISPONIBILIDAD    | 15-11-2019   |          Alto          |


|  **Descripción:**|El software  tiene una  disponibilidad  continua para prestar servicios  al público ya que el parqueadero no está exento de hacerlo en horarios no hábiles  como  por ejemplo los domingos o festivos.                    |
|--------------------------|-------------------------|

8.


|**Implementación de un software para el registro de clientes en la empresa planeadores**                         |
|-------------------------------------------------------|
|**SRS – Especificación de Requerimientos**

|    Código  |   Nombre       |    Fecha     |   Grado Necesidad      |
|------------|:--------------:|:------------:|-----------------------:|
|    RF-008  | FIABILIDAD   | 15-11-2019   |          Alto          |


|  **Descripción:**|El sistema debe tener en cuenta la recuperación frente a fallos de conexión: Asegurar que no se pierdan los datos de la base de datos.                    |
|--------------------------|-------------------------|

9.


|**Implementación de un software para el registro de clientes en la empresa planeadores**                         |
|-------------------------------------------------------|
|**SRS – Especificación de Requerimientos**

|    Código  |   Nombre       |    Fecha     |   Grado Necesidad      |
|------------|:--------------:|:------------:|-----------------------:|
|    RF-009  | MANTENIBILIDAD  | 15-11-2019   |          Alto          |


|  **Descripción:**|Al software se  le debe estar brindando mantenimiento preventivo ya que es de gran importancia para un buen desarrollo de las actividades o procesos de este.                    |
|--------------------------|-------------------------|

#### 3.2	 Requerimientos de interfaz de usuario

1.


|**Implementación de un software para el registro de clientes en la empresa planeadores**                         |
|-------------------------------------------------------|
|**SRS – Especificación de Requerimientos**

|    Código  |   Nombre       |    Fecha     |   Grado Necesidad      |
|------------|:--------------:|:------------:|-----------------------:|
|    RF-001  | LOGIN   | 15-11-2019   |          Alto          |


|  **Descripción:**|Interfaz que permitirá al administrador y a los usuario del sistema ingresar a este, para dar uso a los otros procesos.                   |
|--------------------------|-------------------------|

2.   



|**Implementación de un software para el registro de clientes en la empresa planeadores**                         |
|-------------------------------------------------------|
|**SRS – Especificación de Requerimientos**

|    Código  |   Nombre       |    Fecha     |   Grado Necesidad      |
|------------|:--------------:|:------------:|-----------------------:|
|    RF-002  | REGISTRO DE USUARIO  | 15-11-2019   |          Alto          |


|  **Descripción:**|Interfaz que permitirá que permitirá a personas registrarla en la base de datos del sistema.                   |
|--------------------------|-------------------------|

3.


|**Implementación de un software para el registro de clientes en la empresa planeadores**                         |
|-------------------------------------------------------|
|**SRS – Especificación de Requerimientos**

|    Código  |   Nombre       |    Fecha     |   Grado Necesidad      |
|------------|:--------------:|:------------:|-----------------------:|
|    RF-003  |REGISTRO DE CLIENTES | 15-11-2019   |          Alto          |


|  **Descripción:**|Interfaz que permitirá al usuario registrar clientes                |
|--------------------------|-------------------------|

4.  



|**Implementación de un software para el registro de clientes en la empresa planeadores**                         |
|-------------------------------------------------------|
|**SRS – Especificación de Requerimientos**

|    Código  |   Nombre       |    Fecha     |   Grado Necesidad      |
|------------|:--------------:|:------------:|-----------------------:|
|    RF-004  |OBSERVACIONES | 15-11-2019   |          Alto          |


|  **Descripción:**|Interfaz que permite escribir  al usuario anotaciones  o quejas por parte de los clientes                |
|--------------------------|-------------------------|

#### 4.	Determinación de las tecnologías de hardware, software y servicios requeridos para el proyecto en desarrollo.

##### 4.1. Software
|ITEM|CANTIDAD POR COMPONENTE|COMPONENTE|
|----------------|------------------|----------------|
|1|1|Módulo de ingreso administrador|
|2|1|Módulo registro de clientes|
|3|1|Base de datos de los clientes registrados|

##### 4.2. Computador
|ITEM|CANTIDAD POR COMPONENTE|COMPONENTE|DESCRIPCION|
|---------------------|---------------|----------------|-----|
|1|2|MOUSE|Óptico inalámbrico 2.4 Ghz|
|2|2|TECLADO|Conexión USB|
|2|2|CABLE HDMI|Cable de conexión para el monitor|
|3|2|CABLES DE PODER|Enchufe Black Awin 2mm|
|4|2|MONITOR PLANO LCD DE 24|Asus VG248QE l 24 Pulgadas-144Hz.|
|5|2|UNIDADES OPTICAS|Lecto-grabadora de DVD 16X  mínimo, interfaz EIDE/SATA|
