-- fichier : creation_parent.sql
-- DROP TABLE parent CASCADE CONSTRAINTS;

CREATE TABLE parent (
  id_parent   NUMBER PRIMARY KEY,
  nom         VARCHAR2(50),
  prenom      VARCHAR2(50),
  telephone   VARCHAR2(20),
  adresse     VARCHAR2(100),
  profession  VARCHAR2(50)
);
/
