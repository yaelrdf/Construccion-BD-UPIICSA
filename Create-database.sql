-- Active: 1749188195060@@127.0.0.1@1521@XE@SYSTEM
--Create a plugable database
CREATE PLUGGABLE DATABASE testpdb
ADMIN USER yaeladmin IDENTIFIED BY "amROacoNagmE"
FILE_NAME_CONVERT = ('pdbseed', 'testpdb');

---EXECUTE Conected to the database, so get new conection
--Open Database on startup
ALTER PLUGGABLE DATABASE testpdb OPEN;
ALTER PLUGGABLE DATABASE testpdb SAVE STATE;

--Table space
GRANT CONNECT, RESOURCE, DBA TO yaeladmin;
GRANT CREATE SESSION TO yaeladmin;
GRANT CREATE TABLE TO yaeladmin;
GRANT UNLIMITED TABLESPACE TO yaeladmin;