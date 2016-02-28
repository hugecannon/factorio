# Factorio Server

## Docker-Compose recommended

See `docker-compose.yml` in repo:
```
version: "2"
services:
  factorio:
    image: hugecannon/factorio:latest
    volumes:
      -  "data:/factorio/factorio:rw"
    ports:
      -  "34197:34197"
volumes:
  data:
    driver: local
```

1. Create a save

  `docker-compose run factorio --create mygame`
2. Start the server

  `docker-compose up -d factorio --start-server mygame`
