-- Connect to the Oracle Database
-- Replace 'username', 'password', and 'hostname:port/service_name' with your actual connection details
-- CONNECT username/password@hostname:port/service_name

-- Create the database schema
-- In Oracle, we create a user and then use that user as a schema
-- Replace 'ebs_user' and 'ebs_password' with desired username and password
CREATE USER ebs_user IDENTIFIED BY ebs_password;
GRANT CONNECT, RESOURCE TO ebs_user;

-- Connect as the newly created user
CONNECT ebs_user/ebs_password

-- Create tables
CREATE TABLE login (
    meter_no VARCHAR2(20),
    username VARCHAR2(30),
    name VARCHAR2(30),
    password VARCHAR2(20),
    user_info VARCHAR2(200)  -- Changed 'user' to 'user_info' to avoid conflict with reserved word
);

CREATE TABLE customer (
    name VARCHAR2(20),
    meter_no VARCHAR2(20),
    address VARCHAR2(50),
    city VARCHAR2(30),
    state VARCHAR2(30),
    email VARCHAR2(40),
    phone VARCHAR2(20)
);

-- Commit the transactions
COMMIT;
