CREATE DATABASE testgoitdb;

CREATE TABLE testgoitdb.developers (
	id int AUTO_INCREMENT,
    name varchar(20) NOT NULL,
    surname varchar(20) NOT NULL,
    age int CHECK (age>0),
    sex ENUM('male','female', 'other'),
    PRIMARY KEY(id)
    );
    
CREATE TABLE testGoITDB.skills (
	id int AUTO_INCREMENT,
    industry ENUM('Java', 'C++', 'C#', 'JS'),
    degree ENUM('Junior', 'Middle', 'Senior') DEFAULT 'Junior',
    PRIMARY KEY(id)
    );

CREATE TABLE testgoitdb.projects (
	id int AUTO_INCREMENT,
    name varchar(50) UNIQUE,
    budget bigint NOT NULL, 
    release_date date,
    PRIMARY KEY(id)
    );
    
CREATE TABLE testgoitdb.companies (
	id int AUTO_INCREMENT,
    name varchar(50) NOT NULL,
    country varchar(20),
    city varchar(20),
    PRIMARY KEY(id)
    );
    
CREATE TABLE testgoitdb.customers (
	id int AUTO_INCREMENT,
    name varchar(20),
    surname varchar(20),
    PRIMARY KEY(id)
    );

CREATE TABLE testgoitdb.developers_projects (
	developers_id int,
    projects_id int,
    FOREIGN KEY (projects_id) REFERENCES testgoitdb.projects(id),
    FOREIGN KEY (developers_id) REFERENCES testgoitdb.developers(id)
    );
    
CREATE TABLE testgoitdb.developers_skills (
	developers_id int,
    skills_id int,
    FOREIGN KEY (skills_id) REFERENCES testgoitdb.skills(id),
    FOREIGN KEY (developers_id) REFERENCES testgoitdb.developers(id)
    );
    
ALTER TABLE testgoitdb.projects
	ADD COLUMN companies_id int NOT NULL,
    ADD COLUMN customers_id int NOT NULL,
    ADD FOREIGN KEY (customers_id) REFERENCES testgoitdb.customers(id),
    ADD FOREIGN KEY (companies_id) REFERENCES testgoitdb.companies(id);
    
ALTER TABLE testgoitdb.developers
	ADD COLUMN companies_id int,
    ADD FOREIGN KEY (companies_id) REFERENCES testgoitdb.companies(id);

