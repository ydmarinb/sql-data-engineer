-- Crear base de datos
CREATE DATABASE name_db;

-- Crear usuario y asignar contraseña
CREATE USER name_user WITH ENCRYPTED PASSWORD 'password';

-- Conseder permisos al usuario sobre la base de datos
GRANT ALL ON DATABASE name_db TO name_user;