CREATE TABLE employes236 (
    id_emp NUMBER PRIMARY KEY,
    nom_emp VARCHAR2(50),
    poste VARCHAR2(30),
    salaire NUMBER(10, 2),
    date_embauche DATE,
    departement NUMBER REFERENCES department(id_departement)
);


CREATE TABLE department (
    id_departement NUMBER PRIMARY KEY,
    nom_departement VARCHAR2(50)
);


INSERT INTO department (id_departement, nom_departement) VALUES (4, 'aa');
INSERT INTO department (id_departement, nom_departement) VALUES (5, 'bb');
INSERT INTO department (id_departement, nom_departement) VALUES (6, 'cc');



INSERT INTO employes236 (id_emp, nom_emp, poste, salaire, date_embauche, departement) VALUES (1, 'John Doe', 'Manager', 50000, TO_DATE('2022-01-01', 'YYYY-MM-DD'), 1);
INSERT INTO employes236 (id_emp, nom_emp, poste, salaire, date_embauche, departement) VALUES (2, 'Jane Smith', 'Developer', 60000, TO_DATE('2022-02-01', 'YYYY-MM-DD'), 1);
INSERT INTO employes236 (id_emp, nom_emp, poste, salaire, date_embauche, departement) VALUES (3, 'Alice Johnson', 'HR Specialist', 55000, TO_DATE('2022-03-01', 'YYYY-MM-DD'), 2);

/