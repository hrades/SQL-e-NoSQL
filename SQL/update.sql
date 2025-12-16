UPDATE usuarios
  SET endereco = 'Nova Rua, 123' 
  WHERE email = 'joao@example.com';

UPDATE usuarios
	SET nome = "Ana Oliveira"
  WHERE id = 1;

-- Normalização --
-- Copia os dados da tabela original para a nova tabela
UPDATE usuarios
SET rua = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco, ',', 1), ',', -1),
    numero = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco, ',', 2), ',', -1),
    cidade = SUBSTRING_INDEX(SUBSTRING_INDEX(endereco, ',', 3), ',', -1),
    estado = SUBSTRING_INDEX(endereco, ',', -1);
