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
docker rm -f firma_mq && \
docker run -dit \
      --name firma_mq \
      --env RABBITMQ_DEFAULT_USER=firma_mq \
      --env RABBITMQ_DEFAULT_PASS="[R6mF+wkA^9Re)" \
      -p 15672:15672 \
      -p 5672:5672 \
      rabbitmq:3-management-alpine && \
docker logs --tail 1000 -f firma_mq  
docker exec -it firma_mq /bin/bash      
```
## Administrador local web
En http://localhost:15672/ ingresar con el usuario `firma_mq` y la contraseña `[R6mF+wkA^9Re)`:
