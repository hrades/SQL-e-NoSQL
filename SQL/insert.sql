INSERT INTO usuarios (id, nome, email, dataNascimento, endereco) VALUES (1, "Primeiro Usuário", "todo@todo.com", "2025-12-16", "Av. Paulista - São Paulo");
INSERT INTO destinos (id, nome, descricao) VALUES (1, "Rio de Janeiro", "Uma grande cidade brasileira à beira-mar, famosa pelas suas lindas praias");
INSERT INTO reservas (id, idUsuario, idDestino, statusReserva, dataReserva) VALUES (1, 1, 1, 'pendente', '2026-01-01')

INSERT INTO viagens.usuarios (id, nome, email, dataNascimento, endereco) VALUES 
(2, 'João Silva', 'joao@example.com', '1990-05-15', 'Rua A, 123, Cidade X, Estado Y'),
(3, 'Maria Santos', 'maria@example.com', '1985-08-22', 'Rua B, 456, Cidade Y, Estado Z'),
(4, 'Pedro Souza', 'pedro@example.com', '1998-02-10', 'Avenida C, 789, Cidade X, Estado Y');

INSERT INTO viagens.destinos (id, nome, descricao) VALUES 
(2, 'Praia das Tartarugas', 'Uma bela praia com areias brancas e mar cristalino'),
(3, 'Cachoeira do Vale Verde', 'Uma cachoeira exuberante cercada por natureza'),
(4, 'Cidade Histórica de Pedra Alta', 'Uma cidade rica em história e arquitetura');

INSERT INTO viagens.reservas (id, idUsuario, idDestino, dataReserva, statusReserva) VALUES 
(2, 1, 2, '2023-07-10', 'confirmada'),
(3, 2, 1, '2023-08-05', 'pendente'),
(4, 3, 3, '2023-09-20', 'cancelada');

-- Migrando os dados --
INSERT INTO usuarios_nova (id, nome, email, endereco, dataNascimento)
SELECT id, nome, email, endereco, dataNascimento
FROM usuarios;

INSERT INTO usuarios_nova
SELECT * from usuarios;
