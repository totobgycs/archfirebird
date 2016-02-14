# archfirebird

Archlinux Firebird 2.5. Based on [totobgycs/archdev](https://registry.hub.docker.com/u/totobgycs/archdev/). 

The image exposes the Firebird server on the default port: 3050.

Be sure to change the default credentials in /opt/firebird/SYSDBA.password, 
or provide your own SYSDBA.password with -v at container creation.
Databases are created in the /database volume.