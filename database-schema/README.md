# Database schema

В данной директории находятся файлы для миграции и развертывания базы данных.

##### Как развернуть БД:
1. `git clone git@github.com:saydar31/projectPractice.git`
2. `cd projectPractice/database-schema`
3. `docker-compose up -d`

##### Как присоединиться к базе в контейнере
1. `docker exec -it <container_name> bash`
2. `psql -U <db_user> -d <db_name>`
    - `\d` - посмотреть все таблицы
    - `\с <db_name>` - присоединиться к базе
    - `SELECT * FROM <table_name>;` - во view **psql** можно использовать стандартные SQL запросы
3. `psql -U <user_name> -d <db_name> -f <sql_script>` - исполнить SQL скрипт из shell контейнера
