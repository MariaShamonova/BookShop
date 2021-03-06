-- Generated by Oracle SQL Developer Data Modeler 18.2.0.179.0756
--   at:        2019-12-23 14:38:12 MSK
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



CREATE TABLE feedback (
    feedback#    NUMBER NOT NULL,
    name         VARCHAR2(30) NOT NULL,
    "Date"       NUMBER,
    rating       NUMBER NOT NULL,
    "Comment"    VARCHAR2(150),
    film_film#   NUMBER NOT NULL,
    user_user#   NUMBER NOT NULL
)
LOGGING;

COMMENT ON TABLE feedback IS
    'This entity contains information about the comments on the film left by users. It is divided by name, average rating and comment.'
    ;

ALTER TABLE feedback ADD CONSTRAINT feedback_pk PRIMARY KEY ( film_film#,
                                                              feedback# );

CREATE TABLE film (
    film#            NUMBER NOT NULL,
    tittle           VARCHAR2(100) NOT NULL,
    year             NUMBER,
    ganre            VARCHAR2(100),
    duration         NUMBER,
    average_rating   NUMBER NOT NULL,
    description      VARCHAR2(150)
)
LOGGING;

COMMENT ON TABLE film IS
    'This entity contains information about the name, year of release, the average rating of the film and a brief description, where the primary key is the name of the entity, so that comments are assigned to a particular film'
    ;

ALTER TABLE film ADD CONSTRAINT film_pk PRIMARY KEY ( film# );

CREATE TABLE "User" (
    user#   NUMBER NOT NULL,
    name    VARCHAR2(30) NOT NULL,
    login   VARCHAR2(10) NOT NULL,
    pass    VARCHAR2(10) NOT NULL
)
LOGGING;

COMMENT ON TABLE "User" IS
    'This entity contains information about authorized users. Contains attributes of login, password and username.';

ALTER TABLE "User" ADD CONSTRAINT user_pk PRIMARY KEY ( user# );

ALTER TABLE feedback
    ADD CONSTRAINT feedback_film_fk FOREIGN KEY ( film_film# )
        REFERENCES film ( film# )
    NOT DEFERRABLE;

ALTER TABLE feedback
    ADD CONSTRAINT feedback_user_fk FOREIGN KEY ( user_user# )
        REFERENCES "User" ( user# )
    NOT DEFERRABLE;



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             3
-- CREATE INDEX                             0
-- ALTER TABLE                              5
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
