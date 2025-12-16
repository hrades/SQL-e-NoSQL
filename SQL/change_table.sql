-- Alterar o nome da tabela
ALTER TABLE usuarios_nova RENAME usuarios;

-- Alterar tamanho da coluna endereço -- 
ALTER TABLE usuarios MODIFY COLUMN endereco VARCHAR(100);
