Preguntas
¿Qué es un modelo de datos y para qué sirve?
Es una representación visual o lógica que define cómo se estructuran, almacenan y relacionan los datos en una base de datos. En las bases relacionales, sirve para organizar la información en tablas (filas y columnas), asegurando que los datos sean coherentes y fáciles de consultar.

¿Qué es una clave foránea (Foreign Key) y qué garantiza?
Es una columna en una tabla que hace referencia a la clave primaria (ID) de otra tabla. Su función principal es garantizar la integridad referencial, lo que significa que:

No se pueden crear registros en la tabla "hija" (pedidos) con un ID de cliente que no exista en la tabla "madre" (clientes).
Evita que se borren datos de forma accidental si hay otras tablas que dependen de ellos.