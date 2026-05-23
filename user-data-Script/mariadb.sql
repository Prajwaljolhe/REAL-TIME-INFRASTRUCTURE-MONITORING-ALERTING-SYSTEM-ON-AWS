# Create Database
mysql -e "CREATE DATABASE IF NOT EXISTS FCT;"

# Create Database User
mysql -e "CREATE USER IF NOT EXISTS 'appuser'@'localhost' IDENTIFIED BY 'StrongPass123';"

# Grant Permissions
mysql -e "GRANT ALL PRIVILEGES ON FCT.* TO 'appuser'@'localhost';"

mysql -e "FLUSH PRIVILEGES;"

# Create Table
mysql FCT <<EOF
CREATE TABLE IF NOT EXISTS users (

id INT AUTO_INCREMENT PRIMARY KEY,

name VARCHAR(100),

email VARCHAR(100),

website VARCHAR(255),

comment TEXT,

gender VARCHAR(20)

);
EOF
