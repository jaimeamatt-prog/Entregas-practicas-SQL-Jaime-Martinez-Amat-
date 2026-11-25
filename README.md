# Prácticas SQL

Este directorio reúne las entregas de SQL realizadas con SQLite. La Entrega 1
trabaja con una tabla de animales; las Entregas 2 y 3 consultan la base de
películas `data/moviebig.db`.

## Entregas

### Entrega 1 — creación e inserción de datos

Archivo: [`Entrega_1./ejercicio_1.sql`](./Entrega_1./ejercicio_1.sql)

- Crea la tabla `ParaiZooHuesped` con `CREATE TABLE`.
- Define una clave primaria autoincremental y columnas con distintos tipos de
  datos.
- Inserta registros con `INSERT INTO`, tanto individuales como múltiples.
- Representa datos desconocidos con `NULL` y consulta los registros con
  `SELECT *`.

### Entrega 2 — consultas y filtros

Archivo: [`Entrega_2/practica_2.sql`](./Entrega_2/practica_2.sql)

- Selecciona columnas de `movies` y cambia el nombre mostrado de algunas con
  `AS`.
- Filtra filas con `WHERE`, comparaciones (`>`, `<=`, `<>`) y condiciones
  combinadas con `AND`.
- Busca texto con `LIKE` y comodines `%`; usa `LOWER` para comparar texto sin
  depender de mayúsculas.
- Trata valores nulos con `COALESCE` y `IS NOT NULL`.
- Usa `LENGTH` para calcular la longitud de un texto.

### Entrega 3 — ordenación y filtros por país

Archivo: [`Entrega_3/practica_3.sql`](./Entrega_3/practica_3.sql)

- Filtra películas por país, popularidad, valoración y número de votos.
- Ordena resultados con `ORDER BY`, `ASC` y `DESC`, incluyendo orden por varios
  campos.
- Combina alternativas con `OR`.
- Construye `NombreFinal` con `COALESCE` y `NULLIF` para elegir el primer título
  disponible.
- Incluye una consulta con `strftime` y `CAST` para filtrar por hora.

## Conceptos SQL vistos en el tema

Además de los elementos usados en las entregas, el material de clase presenta:

- `DISTINCT`: elimina filas duplicadas del resultado. Si se indican varias
  columnas, devuelve combinaciones únicas de esas columnas.
- `BETWEEN ... AND ...`: filtra valores dentro de un intervalo, incluidos sus
  extremos.
- `IN (...)` y `NOT IN (...)`: comprueban si un valor pertenece o no a una lista.
- `NOT`: invierte una condición.
- `IS NULL` e `IS NOT NULL`: comprueban si un campo no tiene valor o sí lo tiene;
  no se debe comparar con `= NULL`.
- `IFNULL(valor, alternativa)` y `COALESCE(...)`: sustituyen o seleccionan
  valores cuando hay `NULL`. `IFNULL` recibe dos argumentos y `COALESCE` puede
  recibir varios.

Estos últimos conceptos aparecen en las diapositivas, pero no todos están
aplicados en los archivos SQL de las entregas enumeradas arriba.

## Datos y observaciones

La Entrega 3, ejercicio 3, requiere una hora de estreno, pero la tabla `movies`
disponible solo tiene `release_date` y no contiene una hora. Por ello, la
consulta no puede encontrar estrenos nocturnos con esos datos.

El ejercicio 6 de la Entrega 3 busca el texto `España`. Los nombres de países en
`production_countries` están almacenados en inglés en la base disponible; hay
que comprobar el valor usado por los datos (por ejemplo, `Spain`) para que el
filtro encuentre esas películas.

## Ejecución

Desde la raíz del repositorio, si está instalado el cliente de SQLite:

```sh
sqlite3 :memory: < "Practicas_sql/Entrega_1./ejercicio_1.sql"
sqlite3 data/moviebig.db < Practicas_sql/Entrega_2/practica_2.sql
sqlite3 data/moviebig.db < Practicas_sql/Entrega_3/practica_3.sql
```
