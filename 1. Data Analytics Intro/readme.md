# Практика по контейнеризации

## Demo 1. Postgres

Базовая инициализация Postgres

### Как поднять контейнер
В директории с `docker-compose.yml` в терминале исполнить `docker compose up`

### Как зайти в контейнер
Используя команду `docker ps` узнать ID либо имя контейнера

Открываем shell контейнера командой `docker exec -it <ID or name> bash`

Авторизуемся в БД `psql -U postgres postgres`

### Как удалить именованные volumes
После стопа контейнера командой `docker compose down -v`

## Demo 2. Postgres with scheema

Инициализация Postgres с подготовленной схемой данных

### Как запустить скрипт, не находясь в контейнере
`docker exec -it <ID or name> psql -U <user> -d <dbase> -f <path to script in container>`