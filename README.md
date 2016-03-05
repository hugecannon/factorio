# Factorio Server
[![](https://badge.imagelayers.io/hugecannon/factorio:latest.svg)](https://imagelayers.io/?images=hugecannon/factorio:latest 'Get your own badge on imagelayers.io')

#### Start a new game

```bash
docker run --rm -v "factorio_saves:/factorio/saves" hugecannon/factorio:latest --create mygame
```


#### Run Factororio server

```bash
docker run -d --name factorio -p "34197:34197/udp" -v "factorio_saves:/factorio/saves" hugecannon/factorio:latest --start-server mygame
```


#### Load a previous save to server

```bash
# ensure server is stopped
docker kill factorio

# copy save into volume
docker cp mygame.zip factorio:/factorio/saves/

# start server again
docker start factorio
```


#### Back up a save game

```bash
docker cp factorio:/factorio/saves/mygame.zip .
``` 
