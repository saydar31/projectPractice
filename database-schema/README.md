# Database schema

В данной директории находятся файлы для миграции и развертывания базы данных.

Приложение использует 1 базу данных ```crm``` с дефолтной схемой.

В директории ```migration-scripts``` находятся скрипты для инициализации бд.

Файл ```docker-compose.yml``` содержит конфигурацию(включая порты и имя контейнера) для деплоя бд с готовой схемой в контейнере Docker.

##### Как развернуть БД:

Для деплоя базы данных необходим Docker.

БД запускается внутри контейнера

1. `git clone git@github.com:saydar31/projectPractice.git`
2. `cd projectPractice/database-schema`
3. `docker-compose up -d`

##### Как присоединиться к базе в контейнере:
1. `docker exec -it crm-database bash` - вход в shell контейнера 
2. `psql -U crm -d crm`
    - `\d` - посмотреть все таблицы
    - `\с crm` - присоединиться к базе
    - `SELECT * FROM <table_name>;` - во view **psql** можно использовать стандартные SQL запросы
3. `psql -U crm -d crm -f <sql_script>` - исполнить SQL скрипт из shell контейнера
