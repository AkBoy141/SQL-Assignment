CREATE TABLE Ages (
  name VARCHAR(128),
  age INTEGER
);

DELETE FROM Ages;

INSERT INTO Ages (name, age) VALUES ('Mara', 28);
INSERT INTO Ages (name, age) VALUES ('Otto', 33);
INSERT INTO Ages (name, age) VALUES ('Fyn', 31);
INSERT INTO Ages (name, age) VALUES ('Neshawn', 17);


SELECT hex(name || age) AS X FROM Ages ORDER BY X;
SELECT printf('%x', name || age) AS X FROM Ages ORDER BY X;

SELECT encode((name || age)::bytea, 'hex') AS X
FROM Ages
ORDER BY X;

