# System Message Broker
Message Broker de los micro-servicios de Firma.

# Autenticación
> When the server first starts running, and detects that its database is uninitialised or has been deleted, it initialises a fresh database with the following resources:
> * a virtual host named `/` (a slash)
> * a user named `guest` with a default password of `guest`, granted full access to the `/` virtual host

https://www.rabbitmq.com/access-control.html#default-state

Pero las credenciales por defecto las cambiamos en las variables de entorno del contenedor de docker al usuario `firma_mq` y la contraseña `[R6mF+wkA^9Re)`:
```yaml
(...)
      - RABBITMQ_DEFAULT_USER=firma_mq
      - RABBITMQ_DEFAULT_PASS=[R6mF+wkA^9Re)     
(...)
```

## Lanzamiento para contenedor independiente
```bash
docker-compose --project-name "firma_mq" down
docker-compose --project-name "firma_mq" up --detach
docker-compose --project-name "firma_mq" logs -f --tail 1000 
```
## Administrador local web
En http://localhost:15672/ ingresar con el usuario `firma_mq` y la contraseña `[R6mF+wkA^9Re)`:
