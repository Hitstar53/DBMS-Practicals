# DBMS-Practicals
Contains Sql script files of case study made on Hospital Management Database during SEM III CE (SPIT)  

# Setup MySQL in Vscode
1. Install MySQL on your pc first and setup root user
2. Download "SQL Tools" extension from vscode 
3. click container icon which appears in left panel and tap "search vscode market place"
4. Download the MySQL connector
5. Select MySQL in connection
6. Add a connection name (upto u) and give username as "root" and select "save password" and enter your password
7. Select the database name u want to connect with and then click save connection
8. Upon trying to connect to the saved connection you should encounter an AUTH Error
9. Open command line client of mysql and type the following commands below:
10. `CREATE USER 'sqluser'@'%' IDENTIFIED WITH mysql_native_password BY 'password';`
11. `GRANT ALL PRIVILEGES ON . TO 'sqluser'@'%';`
12. `FLUSH PRIVILEGES;`
13. Exit the terminal and go to vscode and click "edit connection"
14. change user name to "sqluser" & password to "password"
Now save and connect to your database!
