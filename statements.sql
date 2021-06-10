CREATE DATABASE JongerenKansrijker;

USE JongerenKansrijker;

CREATE TABLE medewerker (
    medewerkercode INT(11) NOT NULL,
    roepnaam VARCHAR(255) NOT NULL,
    tussenvoegsel VARCHAR(255) NOT NULL,
    achternaam VARCHAR(255) NOT NULL,
    PRIMARY KEY (medewerkercode) 
);

CREATE TABLE activiteit (
    activiteitcode INT(255) NOT NULL,
    activiteit VARCHAR(255) NOT NULL,
    PRIMARY KEY (activiteitcode) 
);

CREATE TABLE jongere (
    jongerecode INT(11) NOT NULL,
    roepnaam VARCHAR(255) NOT NULL,
    tussenvoegsel VARCHAR(255) NOT NULL,
    achternaam VARCHAR(255) NOT NULL,
    inschrijfdatum DATE NOT NULL,
    PRIMARY KEY (jongerecode) 
);

CREATE TABLE instituut (
    instituutscode INT(11) NOT NULL,
    instituut VARCHAR(255) NOT NULL,
    instituuttelefoon VARCHAR(255) NOT NULL,
    PRIMARY KEY (instituutscode) 
);

CREATE TABLE jongereactiviteit (
    jongerecode INT(11) NOT NULL,
    actiecode INT(11) NOT NULL,
    startdatum DATE NOT NULL,
    afgerond TINYINT(1) NOT NULL,
    FOREIGN KEY (jongerecode) REFERENCES jongere(jongerecode)
); 

CREATE TABLE jongereinstituut (
    jongerecode INT(11) NOT NULL,
    instituutscode INT(11) NOT NULL,
    startdatum DATE NOT NULL,
    FOREIGN KEY (jongerecode) REFERENCES jongere(jongerecode),
    FOREIGN KEY (instituutscode) REFERENCES instituut(instituutscode)
);





