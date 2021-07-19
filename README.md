# murach_php_and_mysql_ch17 #
Murach's PHP and MYSQL (3rd Edition), Chapter 17 Exercises

## Exercise 17-1 Create a database and alter it ##
In this exercise, you will run a script that creates a database named my_guitar_shop2. Then, you will create your own script that contains some statements that alter that database.

### **Create a database by executing an existing script** ###
1. Use a text editor to open the script named my_guitar_shop2.sql that is stored in the book_apps/_create_db directory.
2. Review the code and note how it creates a the database named my_guitar_shop2.
3. Use phpMyAdmin to execute this script as shown in chapter 3. Then, view the structure of the database.

### **Create a script that alters the database** ###
4. Use your text editor to test this to crate a file named customers_alter.sql that you'll use for storing a script.
5. Write an ALTER TABLE statement that adds a column name middleInitials to the customers table. This column should store up to 3 characters, allow NULL values, and be added after the firstName column.
6. Write an ALTER TABLE statement that modifies the customers table so the lastName column can store up to 100 characters.
7. Use phpMyAdmin to test this script. Then, use phpMyAdmin to view the structure of the database. Check to make sure the middleInitials column has been added and that the data type for the lastName column has been changed.

## Exercise 17-2 Create a simple database ##
In this exercise, you will write a script that creates a simple Accounts Payable (AP) database.

### **Write a script that creates a database and its tables** ###

1. Start your text editor and create a file named ap.sql that you'll use for storing a script.
2. Write the CREATE DATABASE statement needed to create a database named ap. If the database already exists, drop it.
3. Use phpMyAdmin to test these statements by cutting and pasting them into phpMyAdmin.
4. Write the USE statement that selects the database.
5. Write CREATE TABLE statements to create the following tables in the AP database.\
When you create these tables, be sure to use the correct data types, to identify the primary key for each table, and to identify the foreign key constraints for the invoices and lineItems tables. Also, make sure to automatically generate a value for each primary key. For each column, include any UNIQUE, NOT NULL, or DEFAULT attributes you think are necessary.
6. Use phpMyAdmin to run the script. Then, view the structure of the database.

### **Add statements to the script to create some indexes and a user** ###
7. Add CREATE INDEX statements to the end of the script to create indexes for the foreign keys of the invoices and lineItems tables. Also, write a CREATE INDEX statement to create an index for the invoiceNumber column.
8. Add a GRANT statement to the end of the script that creates a user named ap_user with a password of "sesame" and grants this user privileges to select, insert, or update data from any table in the database. However, don't allow this user to delete any data from the database.
9. Test the entire ap.sql script to make sure it runs correctly.