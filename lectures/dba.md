##### Database Administration (DBA)
---

A DBA's primary responsibilities are:

1. Maintenance: (a) monitor server, (b) configure server, (c) maintain log files
2. Design: (a) design database, (b) create database
3. Security: (a) maintain user accounts, (b) secure server and databases
4. Backup: (a) backup database, (b) restore database, (c) Migrate data to another server
5. Miscellaneous: (a) start/stop server, (b) optimize server, (c) update software, (d) enable/manage replication (setting up two or more DB servers linked where changes propogate from one to the others).

 
 ###### Log files
 
 Configuration files (.cnf) are used when the database starts and contains 


###### Client connections and queries (processes)

Select, view or kill.  Kill query if taking too long; kill connection if it is someone unknown or suspect.

###### Status and system variables

Status variables contain information about the server (show status).  System variables stores a server configuration setting (show variables). 

###### GETTING and SETTING system variables

@@GLOBAL.var_name

@@[SESSION.]var_name

SET GLOBAL var_name = var_value;

SET SESSION var_name = var_value;  (SESSION is default.  aka LOCAL)


#### TERMS

- database administrator: 

- database replication: 

- master:

- slave:

- configuration file: 

- data file: a (.frm file) contains database objects (e.g., tables, views, indexes) information.  InnoDB assigns one file for each table.  MyISAM uses three per table (.frm, .myd, and .myi).

- log files: information logged by the database server

- general log: contains client connections and SQL statements received from these clients

- error log: error messages and information about server startup and shutdown

- slow query log: a list of SQL statements that take a long time to execute

- binary log: record of changes to the database

- relay log: relays any changes that have been made on the master machine

- process: a connection to the database

- status variable: variable that contains MySQL server status information

- system variable: varaible that stores a setting for the current configuration


##### Exercises


