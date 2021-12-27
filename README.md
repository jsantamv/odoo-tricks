# Odoo con visual studio Code

Descargamos Odoo del repositorio
`git clone https://github.com/odoo/odoo.git --branch 14.0 --single-branch --depth 1 devteamcr-odoo` 

1. Inicializamos nuestro entorno virtual

    `python3 -m venv venv`

2. Activamos nuestro entorno virtual

    `source venv/bin/activate`

3. Instalamos los requerimientos de ODOO.

    - hay qutener cuidado con las versiones paython, hay que utilizar `pip3` para instalar los modulos que necesitamos 
    ya que estamos trabajando en python3
    - Tambien hay que instalar los requerimientos en los modulos que vamos desarrollando ya que estan en entornos seperados. 

    python2
    `pip install -r /home/odoo/odoo14/requirements.txt`

    python3
    `pip3 install -r /home/odoo/odoo14/requirements.txt`

    3.1 En Caso de requerir una nueva instalacion en nuevo modulo se debe de agregar
        `pip3 uninstall -r /home/odoo/odoo14/requirements.txt`

4. Configuracion de Instalacion

    Warning, your Odoo database manager is not protected. To secure it, we have generated the following master password for it:
        Master Password `qvqf-nb95-6ptp`
    You can change it below but be sure to remember it, it will be asked for future operations on databases.



