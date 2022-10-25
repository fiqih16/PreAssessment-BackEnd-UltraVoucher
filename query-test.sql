CREATE TABLE tb1 (
    id INT,
    name VARCHAR(255),
    parent_id INT
);

INSERT INTO tb1 (id, name, parent_id) VALUES (1, 'Zaki', 2);
INSERT INTO tb1 (id, name, parent_id) VALUES (2, 'Ilham', NULL);
INSERT INTO tb1 (id, name, parent_id) VALUES (3, 'Irwan', 2);
INSERT INTO tb1 (id, name, parent_id) VALUES (4, 'Arka', 3);

CREATE TABLE tb2 (
    id INT,
    name VARCHAR(255),
    parent_name VARCHAR(255)
);

INSERT INTO tb2 (id, name, parent_name) SELECT a.id, a.name, b.name AS parent_name FROM tb1 a LEFT JOIN tb1 b ON a.parent_id = b.id ORDER BY a.id ASC;