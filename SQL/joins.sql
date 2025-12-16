-- Traz apenas os usuario com reservas
SELECT * FROM usuarios us
INNER JOIN reservas rs
	ON us.id = rs.idUsuario;

-- Traz todos os usuario e suas reservas e destinos
SELECT * FROM usuarios us
INNER JOIN reservas rs ON us.id = rs.idUsuario
INNER JOIN destinos ds ON rs.idUsuario = ds.id;

-- Tras todos os destinos e as reservas se tiverem -- 
SELECT * FROM reservas rs
RIGHT JOIN destinos des
	ON des.id = rs.idDestino;

-- Produz o mesmo resultado que a anterior
SELECT * FROM destinos des
LEFT JOIN reservas rs
	ON des.id = rs.idDestino;
