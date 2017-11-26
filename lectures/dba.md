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

- configuration file: contains server configuration default values.  Files are "my.cnf" on Linux and "my.ini" on Windows.

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

1. Start MySQL Workbench and open the Client Connections window to view the process list.  Then, open four SQL Editor tabs.  As you open each one, switch back to the process list and note how the number of processes grows.  Next, run some queires and note how they use system resources.

2. Use Workbench's Client Connections window to view these status variables: connections, threads_connected, bytes_received, and bytes_sent.  Read the descriptions for these variables to get an idea of what they do.

3. Use Workbench's Status and System Variables window to view the system varaibles named basedir adn datadir.  Note the paths to these directories. Then, view the system variables named log_error and log_bin.  Determine whether these system variables are set to ON or OFF.

4. Use a SET statement to temporarily enable the general log.  Then, to make sure that this varaible was set, use a SELECT statement to view the variable.  If you get an error indicating that access is denied, you may need to stop Workbench and run it as an administrator.  

5. Use a SET statement to disable the general log.  Then, to make sure this varaible was set, use a SELECT statement to view the variable.
