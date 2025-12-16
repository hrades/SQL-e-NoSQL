-- Alterar o nome da tabela
ALTER TABLE usuarios_nova RENAME usuarios;

-- Alterar tamanho da coluna endereço -- 
ALTER TABLE usuarios MODIFY COLUMN endereco VARCHAR(100);

-- Primary Key--
-- Tabela "usuarios"
ALTER TABLE usuarios
MODIFY COLUMN id INT AUTO_INCREMENT,
ADD PRIMARY KEY (id);

-- Tabela "destinos"
ALTER TABLE destinos
MODIFY COLUMN id INT AUTO_INCREMENT,
ADD PRIMARY KEY (id);

-- Tabela "reservas"
ALTER TABLE reservas
MODIFY COLUMN id INT AUTO_INCREMENT,
ADD PRIMARY KEY (id);

-- Chaves estrangeiras --

-- Adicionando chave estrangeira na tabela "reservas" referenciando a tabela "usuarios"
ALTER TABLE reservas
ADD CONSTRAINT fk_reservas_usuarios
FOREIGN KEY (idUsuario) REFERENCES usuarios(id);

-- Adicionando chave estrangeira na tabela "reservas" referenciando a tabela "destinos"
ALTER TABLE reservas
ADD CONSTRAINT fk_reservas_destinos
FOREIGN KEY (idDestino) REFERENCES destinos(id);

-- Alterando a restrição da chave estrangeira "fk_reservas_usuarios" na tabela "reservas" para ON DELETE CASCADE
ALTER TABLE reservas
DROP FOREIGN KEY fk_reservas_usuarios;

ALTER TABLE reservas
ADD CONSTRAINT fk_reservas_usuarios
FOREIGN KEY (idUsuario) REFERENCES usuarios(id)
ON DELETE CASCADE;
