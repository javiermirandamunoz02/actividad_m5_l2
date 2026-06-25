CREATE TABLE clientes (
	id SERIAL PRIMARY KEY,
	nombre VARCHAR(100),
	ciudad VARCHAR(50),
);

CREATE TABLE pedidos (
	id SERIAL PRIMARY KEY, 
	cliente_id INTEGER,
	fecha DATE, 
	total NUMERIC,
	FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);



-- 1. CONSULTAS A UNA SOLA TABLA

SELECT * FROM clientes;

SELECT nombre, ciudad 
FROM clientes 
WHERE ciudad = 'Valparaíso';

SELECT * FROM clientes WHERE id = 3;

SELECT COUNT(*) FROM clientes;

SELECT DISTINCT ciudad FROM clientes;

SELECT ciudad, COUNT(*) 
FROM clientes 
GROUP BY ciudad;



-- 2. CONSULTAS ENTRE VARIAS TABLAS

SELECT pedidos.*, clientes.nombre
FROM pedidos
JOIN clientes ON pedidos.cliente_id = clientes.id;

SELECT pedidos.*
FROM pedidos
JOIN clientes ON pedidos.cliente_id = clientes.id
WHERE clientes.city = 'Santiago';

SELECT cliente_id, COUNT(*) as total_pedidos
FROM pedidos
GROUP BY cliente_id;

SELECT clientes.nombre, pedidos.id as pedido_id, pedidos.total
FROM clientes
LEFT JOIN pedidos ON clientes.id = pedidos.cliente_id;

SELECT nombre 
FROM clientes 
WHERE id IN (
    SELECT cliente_id 
    FROM pedidos 
    GROUP BY cliente_id 
    HAVING SUM(total) > 100000
);