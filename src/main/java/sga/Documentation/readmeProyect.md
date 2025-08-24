
**                 Readme realizado por Jorge Herraiz Soler                   **
--------------------------------------------------------------------------------
| Procedimiento para iniciar desde cero este proyecto.                          |
--------------------------------------------------------------------------------


// R E Q U E R I M I E N T O S     T E C N I C O S    Y     P R A C T I C O S

1. Tener Apache Netbeans IDE 26  
 
2. Tener instalado el jdk-21  
   | java -version 21.0.7 | 

3. Tener instalado GassFish Server 8.0.0  
   | Propiedades > Java (Pestaña) >> Java Platform JDK =>  JDK 21  | 

   Vinculo (revisar en caso de no tener instalado GassFish Server 8.0.0 )
        - Archivo  / url  --  Documentation/readmeInstallGlassfishServer8.0.0.md



// P R O C E D I M I E N T O     A P P L I C A T I O N   D E P L O Y  S G A - J E E - W E B

1. Tener instalado MySQL Workbench 8.0.42  (Community Version)

2. Dentro de MySQL Workbench crear Schema con el nombre test 

3. Dentro de MySQL Workbench en Server > Data Import  seleccionar la carpeta que esta en Documentation que se llama importarBD_test y darle a importar

4. Tener instalado Glassfish Server 8.0.0 en caso de no tenerlo instalado 
    - Archivo  / url  --  Documentation/readmeInstallGlassfishServer8.0.0.md

5. Configurar el DataSource  PersonaPool / PersonaDB  dentro de Glassfish 
    - Archivo / url  --  Documentation/readmeConfigurateDataSourceGlassfish.md

6. Configurar el DataSource  UsuarioPool / UsuarioDB  dentro de Glassfish 
    - Archivo / url  --  Documentation/readmeConfigurateDataSourceGlassfish.md


7. Dentro del paquete cliente.ciclovidajpa tenemos 5 archivos .java que nos 
   permitiran poder gestionar y testear operaciones CRUD con Personas y Usuarios

        > EncontrarObjetoJPA.java
        > PersistirObjetoJPA.java
        > ActualizarObjetoJPA.java
        > ActualizarObjetoSesionLarga.java
        > EliminarObjetoJPA.java