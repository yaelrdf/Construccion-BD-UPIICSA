-- Oracle 21c Pluggable Database Creation Script
-- Connect as SYSDBA to the Container Database (CDB)

-- Step 1: Create the Pluggable Database
CREATE PLUGGABLE DATABASE compraVenta
ADMIN USER pdbadmin IDENTIFIED BY "adminpdb"
FILE_NAME_CONVERT = ('pdbseed', 'compraVenta');

-- Step 2: Open the Pluggable Database
ALTER PLUGGABLE DATABASE compraVenta OPEN;

-- Step 3: Set the PDB to auto-start
ALTER PLUGGABLE DATABASE compraVenta SAVE STATE;

-- Step 4: Connect to the Pluggable Database
ALTER SESSION SET CONTAINER = compraVenta;

-- Step 5: Create first admin user
CREATE USER yaeladmin IDENTIFIED BY "102005";

-- Grant necessary privileges to yaeladmin
GRANT DBA TO yaeladmin;
GRANT CONNECT, RESOURCE TO yaeladmin;
GRANT CREATE SESSION TO yaeladmin;
GRANT UNLIMITED TABLESPACE TO yaeladmin;

-- Step 6: Create second admin user
CREATE USER betsa18 IDENTIFIED BY "18ABCO04";

-- Grant necessary privileges to betsa18
GRANT DBA TO betsa18;
GRANT CONNECT, RESOURCE TO betsa18;
GRANT CREATE SESSION TO betsa18;
GRANT UNLIMITED TABLESPACE TO betsa18;

-- Step 7: Verify the setup
SELECT name, open_mode FROM v$pdbs WHERE name = 'compraVenta';

-- Show created users
SELECT username, account_status, created FROM dba_users 
WHERE username IN ('yaeladmin', 'betsa18', 'PDBADMIN');


PROMPT 'Pluggable Database compraVenta created successfully with admin users!';