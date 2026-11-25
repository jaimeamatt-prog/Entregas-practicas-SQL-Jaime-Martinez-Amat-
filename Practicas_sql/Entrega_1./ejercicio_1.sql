

--EJERCICIO 1
DROP TABLE IF EXISTS ParaiZooHuesped;

CREATE TABLE ParaiZooHuesped (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    animal VARCHAR(50),
    nombre VARCHAR(50),
    sexo VARCHAR(10),
    fecha_nacimiento DATE,
    especie VARCHAR(30),
    fecha_incorporacion DATE,
    comida_diaria_kg DECIMAL(6,3),
    jaula INT,
    peso_llegada_kg DECIMAL(7,2)
);


-- EJERCICIO 2

INSERT INTO ParaiZooHuesped (
    animal, nombre, sexo, fecha_nacimiento, especie,
    fecha_incorporacion, comida_diaria_kg, jaula, peso_llegada_kg
)
VALUES (
    'Conejo', 'Parches', 'Macho', '2017-09-20', 'Herbívoro',
    '2019-09-13', 0.250, 24, 1.5
);

---- EJERCICIO 3
INSERT INTO ParaiZooHuesped (
    animal, nombre, sexo, fecha_nacimiento, especie,
    fecha_incorporacion, comida_diaria_kg, jaula, peso_llegada_kg
)
VALUES
    ('Caballo', 'Spirit', 'Macho', '2009-08-07', 'Herbívoro',
     '2019-10-02', 3.000, 15, 230.00),
    ('Pava', 'Perla', 'Hembra', '2018-09-21', 'Omnívoro',
     '2019-10-02', 0.500, 23, 42.00);

INSERT INTO ParaiZooHuesped (
    animal, nombre, sexo, fecha_nacimiento, especie,
    fecha_incorporacion, comida_diaria_kg, jaula, peso_llegada_kg
)
VALUES (
    'Tigresa', 'Fresa', 'Hembra', NULL, 'Carnívoro',
    '2019-11-20', 4.000, 31, 42.00
);

INSERT INTO ParaiZooHuesped (
    animal, nombre, sexo, fecha_nacimiento, especie,
    fecha_incorporacion, comida_diaria_kg, jaula, peso_llegada_kg
)
VALUES (
    'Cocodrilo', 'Nilo', 'Macho', NULL, 'Carnívoro',
    '2019-12-12', 5.000, 47, 44.00
);


INSERT INTO ParaiZooHuesped (
    animal, nombre, sexo, fecha_nacimiento, especie,
    fecha_incorporacion, comida_diaria_kg, jaula, peso_llegada_kg
)
VALUES (
    'Loro', 'Paco', 'Macho', NULL, 'Omnívoro',
    '2020-01-15', 0.100, 12, 0.50
);

SELECT * FROM ParaiZooHuesped;
