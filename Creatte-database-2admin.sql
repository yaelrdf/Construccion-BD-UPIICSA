-- Oracle 21c Pluggable Database Creation Script
-- Connect as SYSDBA to the Container Database (CDB)

-- Step 1: Create the Pluggable Database
CREATE PLUGGABLE DATABASE mypdb
ADMIN USER pdbadmin IDENTIFIED BY "AdminPass123!"
FILE_NAME_CONVERT = ('pdbseed', 'testpdb');

-- Step 2: Open the Pluggable Database
ALTER PLUGGABLE DATABASE mypdb OPEN;

-- Step 3: Set the PDB to auto-start
ALTER PLUGGABLE DATABASE mypdb SAVE STATE;

-- Step 4: Connect to the Pluggable Database
ALTER SESSION SET CONTAINER = mypdb;

-- Step 5: Create first admin user
CREATE USER admin1 IDENTIFIED BY "AdminUser1Pass!";

-- Grant necessary privileges to admin1
GRANT DBA TO admin1;
GRANT CONNECT, RESOURCE TO admin1;
GRANT CREATE SESSION TO admin1;
GRANT UNLIMITED TABLESPACE TO admin1;

-- Step 6: Create second admin user
CREATE USER admin2 IDENTIFIED BY "AdminUser2Pass!";

-- Grant necessary privileges to admin2
GRANT DBA TO admin2;
GRANT CONNECT, RESOURCE TO admin2;
GRANT CREATE SESSION TO admin2;
GRANT UNLIMITED TABLESPACE TO admin2;

-- Step 7: Verify the setup
SELECT name, open_mode FROM v$pdbs WHERE name = 'MYPDB';

-- Show created users
SELECT username, account_status, created FROM dba_users 
WHERE username IN ('ADMIN1', 'ADMIN2', 'PDBADMIN');

-- Optional: Create default tablespace for the PDB users
CREATE TABLESPACE users_ts
DATAFILE '/opt/oracle/oradata/ORCL/mypdb/users01.dbf'
SIZE 100M
AUTOEXTEND ON
NEXT 10M
MAXSIZE UNLIMITED;

-- Set default tablespace for new users
ALTER DATABASE DEFAULT TABLESPACE users_ts;

PROMPT 'Pluggable Database MYPDB created successfully with admin users!';