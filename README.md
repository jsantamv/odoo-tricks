# Script de instalación de Odoo 13 en Ubuntu 20.04

- Se muestra paso a paso la instalación y se recomienda seguirla e ir entendiendo el proceso seguido.
- Se predispone al usuario con conocimientos básicos de Linux/Ubuntu
- Se solucionan posibles errores que han surgido durante la grabación de la instalación del vídeo de la Clase I. Si se os da algún otro error podeis hacer la consulta en el foro de este curso o emplear un foro externo a fin de resolver tal incidencia.

1. `sudo apt install git npm python3-pip postgresql postgresql-client-common libxml2-dev libxslt1-dev lib32z1-dev libldap2-dev libsasl2-dev libjpeg8-dev`

2. Descargamos los archivos wkhtmltox y libpng12-0. Se pueden descargar a través del comando wget (o con apt-get, si no nos da error)

   `sudo wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.xenial_amd64.deb`

   `sudo wget http://archive.ubuntu.com/ubuntu/pool/main/libp/libpng/libpng12-0_1.2.54-1ubuntu1_amd64.deb`

3. `sudo apt-get install xfonts-75dpi` (si da error, ejecutad `sudo apt --fix-broken install`)

4. Instalamos los paquetes descargados (si da error, paso 5, sino paso 6)
   `sudo dpkg -i *.deb` 

5. Continuamos con los siguientes
   `sudo wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl1.0/libssl1.0.0_1.0.2n-1ubuntu5_amd64.deb`

   `sudo dpkg -i libssl1.0.0_1.0.2n-1ubuntu5_amd64.deb`
   `sudo add-apt-repository ppa:linuxuprising/libpng12`
   `sudo apt update`
   `sudo apt install libpng12-0`

6. `sudo npm install -g less less-plugin-clean-css`

7. ## Configuracion del usuario de BD PostgreSQL
   - Iniciar la base de datos: `sudo service postgresql start`  
   - Verificamos que este arriba `sudo netstat -nlp | grep 5432` 
   - Cambiar al usuario de base de datos: `sudo su - postgres` 
   - creamos un usuario root: `createuser root -s`
   - Incializamos la base de datos tempalte1: `psql template1`
   - cambiamos el password a root: `alter role root with password 'odoo';`
   - salimos `\q`
   - `exit` 
 
8. Creamos el directorio odoo en la ruta donde vamos a hacer la instalación (típicamente opt/odoo ó /home/odoo)
   - este directorio es opcional cuando se clona se crea:  `sudo mkdir odoo`  
   - la carpeta. `cd odoo`
   - `git clone https://github.com/odoo/odoo.git --branch 13.0 --single-branch --depth 1`

9. `cd odoo/`

10. `sudo pip3 install -r requirements.txt` 
   - si da errores el paquete psycho ejecutamos `sudo apt-get install --reinstall libpq-dev`

11. `cd doc/`

12. `sudo pip3 install -r requirements.txt` 

13. Creamos una carpeta para la personalizacion de los addons customizados en la raiz del proyecto
   `mkdir custom_addons`

14. Debemos de crear un odoo.confg:
   `[options]`
   `admin_passwd = odoo`
   `db_host = localhost`
   `db_port = 5432`
   `db_user = root`
   `db_password = odoo`
   `addons_path = /mnt/e/odoo-pos/odoo/custom_addons`

15. ODOO v14, Verificar que tengamos los siguientes paquetes
   - Para la version python3 `sudo apt-get install python3-pypdf2`
   - check requirements.txt which is under your odoo version and install the version mentioned there `sudo pip3 install Werkzeug==0.16.1`
   - Validar que tengamos el psycopg2 instalado ORM para Postgress
      - `sudo apt-get install libpq-dev`
      - `pip install psycopg2`
      - `sudo apt-get install build-dep python-psycopg2`
      - `pip3 install psycopg2`

16. Iniciamos el servidor
   - Iniciar la base de datos: `sudo service postgresql start`  
   - Verificamos que este arriba `sudo netstat -nlp | grep 5432` 
   - `sudo ./odoo-bin -c odoo.conf -d datatest -i base`

17. http://localhost:8069


