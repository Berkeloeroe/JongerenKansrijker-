CREATE DATABASE JongerenKansrijker;

USE JongerenKansrijker;

CREATE TABLE activiteit (
    activiteitcode VARCHAR(3) NOT NULL,
    activiteit VARCHAR(3) NOT NULL
);

CREATE TABLE jongere (
    jongerecode VARCHAR(5) NOT NULL,
    roepnaam VARCHAR(20) NOT NULL,
    tussenvoegsel VARCHAR(7) NOT NULL,
    achternaam VARCHAR(25) NOT NULL,
    inschrijfdatum DATE NOT NULL
);

CREATE TABLE instituut (
    instituutscode VARCHAR(5) NOT NULL,
    instituut VARCHAR(40) NOT NULL,
    instituuttelefoon VARCHAR(11) NOT NULL
);

CREATE TABLE jongereactiviteit (
    jongerecode VARCHAR(3) NOT NULL,
    actiecode VARCHAR(3) NOT NULL,
    startdatum DATE NOT NULL,
    afgerond TINYINT(1) NOT NULL,
    FOREIGN KEY jongerecode REFERENCES jongere(jongerecode)
); 

CREATE TABLE jongereinstituut (
    jongerecode VARCHAR(5) NOT NULL,
    instituutscode VARCHAR(5) NOT NULL,
    startdatum DATE NOT NULL,
    FOREIGN KEY jongerecode REFERENCES jongere(jongerecode),
    FOREIGN KEY instituutscode REFERENCES instituut(instituutscode)
);





