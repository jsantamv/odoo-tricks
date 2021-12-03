# CONFIGURACION INCIAL

Cuando se crea un nuevo proyecto, en PYCharm, debemos de agregar la configuracion 
`-c odoo.conf -d datatest --dev=all` esto es para utilice la base de datos datatest y en modo desarrollo para debuguear


![Interpreter](img\odooEvnv.png)

# Modulos en ODOO

Podeis consultar todos los atributos a especificar en el archivo __manifest__.py a través del siguiente enlace:
	- https://www.odoo.com/documentation/13.0/reference/module.html (Fuente oficial)

Con el comando: `sudo ./odoo-bin scaffold -h` esto es Generates an Odoo module skeleton.

- comando para generar el modulo
	- `sudo ./odoo-bin scaffold custom_crm custom_addons`


