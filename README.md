# System Message Broker
Message Broker de los micro-servicios de Firma.

## Lanzamiento para contenedor independiente
```bash
docker-compose --project-name "firma_mq" down
docker-compose --project-name "firma_mq" up --detach
docker-compose --project-name "firma_mq" logs -f --tail 1000 
```

