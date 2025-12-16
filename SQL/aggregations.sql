-- Conta o número de registros
SELECT COUNT(*) FROM usuarios;

-- Conta usuarios com reservas -- 
SELECT COUNT(*) as total_usuarios_com_reservas FROM usuarios us
INNER JOIN reservas rs ON us.id = rs.id;

-- Conta quantas reservas existem por destino --
SELECT idDestino as qtd_reservas, COUNT(*) FROM reservas
GROUP BY idDestino;

-- Media da idade dos usuarios
SELECT AVG(TIMESTAMPDIFF(YEAR, dataNascimento, CURRENT_DATE())) AS idade
FROM usuarios;

-- Soma da idade dos usuarios
SELECT SUM(TIMESTAMPDIFF(YEAR, dataNascimento, CURRENT_DATE())) AS soma_idades
FROM usuarios;

-- Menor Idade
SELECT MIN(TIMESTAMPDIFF(YEAR, dataNascimento, CURRENT_DATE())) AS menor_idade
FROM usuarios;

-- Maior Idade
SELECT MAX(TIMESTAMPDIFF(YEAR, dataNascimento, CURRENT_DATE())) AS maior_idade
FROM usuarios;

-- Calcula quantidade de reservas por destino --
SELECT *, COUNT(*) AS total_reservas FROM reservas GROUP BY id_destino ;


-- Limit
SELECT *, COUNT(*) AS total_reservas FROM reservas GROUP BY idDestino LIMIT 1 OFFSET 2;

SELECT *, COUNT(*) AS total_reservas FROM reservas GROUP BY idDestino LIMIT 1;

-- Ordenação
SELECT nome
FROM usuarios
ORDER BY nome;

SELECT nome, dataNascimento
FROM usuarios
ORDER BY dataNascimento, nome;

SELECT nome, dataNascimento
FROM usuarios
ORDER BY dataNascimento, nome DESC;
