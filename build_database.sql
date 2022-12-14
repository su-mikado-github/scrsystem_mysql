CREATE DATABASE IF NOT EXISTS scrsystem_db CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci;

CREATE USER IF NOT EXISTS scrsystem_dbuser@localhost IDENTIFIED WITH mysql_native_password BY 'P@ssW0rd';

GRANT ALL ON scrsystem_db.* TO scrsystem_dbuser@localhost;

CREATE USER IF NOT EXISTS scrsystem_dbuser@'172.26.%' IDENTIFIED WITH mysql_native_password BY 'P@ssW0rd';

GRANT ALL ON scrsystem_db.* TO scrsystem_dbuser@'172.26.%';

FLUSH PRIVILEGES;
