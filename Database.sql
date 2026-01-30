-- Phase 1 : Structure (DDL - Data Definition Language)
-- 1. Création (CREATE)

CREATE DATABASE structure;
USE structure;
CREATE TABLE Auteurs(
    id INT PRIMARY KEY AUTO INCREMENT,
    nom VARCHAR(20),
    nationalite VARCHAR(20)
)ENGINE = INNODB;

CREATE TABLE Livres(
    id INT PRIMARY KEY AUTO INCREMENT,
    titre VARCHAR(20),
    prix FLOAT,
    date_publication DATE,
    auteur_id INT,
    FOREIGN KEY auteur_id REFERENCES Auteurs(id)
)ENGINE = INNODB;

-- 2. Modification (ALTER)

ALTER TABLE Livres ADD stock INT;
ALTER TABLE Livres ALTER COLUMN titre VARCHAR(100);

-- 3. Suppression (DROP / TRUNCATE)

ALTER TABLE Livres DROP FOREIGN KEY fk_auteur;
DROP TABLE Auteurs;

TRUNCATE TABLE Livres;

-- Phase 2 : Manipulation (DML - Data Manipulation Language)
-- 1. Ajout (INSERT)
INSERT INTO Auteurs (nom, nationalite) VALUES ('Victor Hugo', 'Française'),('Ghita Makhfi', 'Marocaine'),('Najib Mahfoud', 'Egyptien');
INSERT INTO Livres (titre, prix, date_publication, auteur_id, stock) VALUES
('Les Misérables', 360, '1862-01-01', 1, 20),
('Notre Dame de Paris', 299.99, '1831-01-01', 1, 7),
('Anabella', 180.00, '2020-08-02', 2, 40),
('Elle decide de mourir', 50.00, '2007-01-01', 2, 2),
('Les Chiens', 35.00, '1999-01-01', 3, 0);

-- 2. Modification (UPDATE)
UPDATE Livres SET prix = prix * 1.10;

-- 3. Suppression (DELETE)
DELETE FROM Livres WHERE stock = 0;

-- Phase 3 : Les 15 Requêtes SELECT
-- Niveau Facile (Sélection & Filtres simples)
-- 1.
SELECT titre, prix FROM Livres;
-- 2.
SELECT titre FROM Livres WHERE prix>200;
-- 3.
SELECT nom FROM Auteurs WHERE nationalite = 'Francaise';
-- 4.
SELECT titre FROM Livres ORDER BY date_publication DESC;
-- 5.
SELECT COUNT(titre) FROM Livres;

-- Niveau Moyen (Jointures & Agrégations)
-- 6.

-- 7.

-- 8.

-- 9.

-- 10.


-- Niveau Avancé (Sous-requêtes & Fonctions complexes)
-- 11.

-- 12.

-- 13.

-- 14.

-- 15.


-- Questions de Théorie SQL
-- 1. Clés

-- 2. Jointures

-- 3. Performance

-- 4. Intégrité

-- 5. ACID
