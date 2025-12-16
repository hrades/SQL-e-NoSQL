EXPLAIN SELECT * FROM usuarios WHERE nome = "Maria";

EXPLAIN SELECT * FROM usuarios us
INNER JOIN reservas rs
ON us.id = rs.idusuario
WHERE nome = "Maria";

CREATE INDEX idx_nome ON usuarios (nome);

EXPLAIN SELECT * FROM usuarios WHERE email = "larissa.oliveira@example.com";
