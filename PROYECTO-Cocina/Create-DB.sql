-- Step 1: Create the Pluggable Database
CREATE PLUGGABLE DATABASE Cocina
ADMIN USER pdbadmin IDENTIFIED BY "adminpdb"
FILE_NAME_CONVERT = ('pdbseed', 'Cocina');

-- Step 2: Open the Pluggable Database
ALTER PLUGGABLE DATABASE Cocina OPEN;

-- Step 3: Set the PDB to auto-start
ALTER PLUGGABLE DATABASE Cocina SAVE STATE;

-- Step 4: Connect to the Pluggable Database
ALTER SESSION SET CONTAINER = Cocina;

-- Step 5: Create first admin user
CREATE USER yaeladmin IDENTIFIED BY "102005";

-- Grant necessary privileges to yaeladmin
GRANT DBA TO yaeladmin;
GRANT CONNECT, RESOURCE TO yaeladmin;
GRANT CREATE SESSION TO yaeladmin;
GRANT UNLIMITED TABLESPACE TO yaeladmin;