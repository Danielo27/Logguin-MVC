/*BASE DE DATOS LOGGIN*/

CREATE DATABASE loggin_db;
USE loggin_db;

CREATE TABLE user_lg(
    id_usr INT AUTO_INCREMENT PRIMARY KEY,
    name_usr VARCHAR(45) NOT NULL,
    surname_usr VARCHAR(45) NOT NULL,
    phoneNumber_usr BIGINT(10) UNIQUE NOT NULL
);

CREATE TABLE loggin_lg(
    id_lg INT,
    mail_lg VARCHAR(45) NOT NULL UNIQUE,
    password_lg VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_lg) REFERENCES user_lg(id_usr)
);

/*CONSULTAS QUE HARA EL SISTEMA DE INFORMACION*/
INSERT INTO user_lg(name_usr,surname_usr,phoneNumber_usr) VALUES ('Daniel','Quintero Henriquez', 3112345323);
SELECT (id_usr) FROM user_lg WHERE phoneNumber_usr = 3112345323;
INSERT INTO loggin_lg(id_lg,mail_lg,password_lg) VALUES (1,'danielquinterohenriquez@correo.com',MD5('123456789'));
SELECT id_usr FROM user_lg INNER JOIN loggin_lg ON user_lg.id_usr = loggin_lg.id_lg WHERE mail_lg= 'danielquinterohenriquez@correo.com' AND password_lg = MD5('123456789');
