-- Inserindo coleções
INSERT INTO tbl_collections (nome_colecao, data_lancamento, quantidade_cartas) VALUES
('Base Set', '1999-01-09', 102),
('Jungle', '1999-06-16', 64),
('Fossil', '1999-10-10', 62),
('Team Rocket', '2000-04-24', 83),
('Gym Heroes', '2000-08-14', 132);

-- Inserindo tipos elementais
INSERT INTO tbl_types (nome_tipo) VALUES
('Fogo'),
('Água'),
('Grama'),
('Elétrico'),
('Psíquico'),
('Lutador'),
('Metálico'),
('Escuridão'),
('Fada'),
('Dragão'),
('Incolor');

-- Inserindo estágios
INSERT INTO tbl_stages (nome_estagio) VALUES
('Básico'),
('Estágio 1'),
('Estágio 2'),
('Mega Evolução'),
('GX');

-- Inserindo ataques
INSERT INTO tbl_attacks (nome_ataque, energia_necessaria, dano, efeito) VALUES
('Choque do Trovão', 'Elétrico', 30, 'Pode paralisar o oponente'),
('Chama Furiosa', 'Fogo', 50, 'Descarta 1 energia de fogo'),
('Raio Psíquico', 'Psíquico', 40, 'Causa confusão'),
('Investida Selvagem', 'Grama', 20, 'Pode causar envenenamento'),
('Hidrobomba', 'Água', 60, 'Aumenta 10 de dano por energia água extra');

-- Inserindo cartas
INSERT INTO tbl_cards (nome, hp, fraqueza, resistencia, custo_recuo, numero_colecao, collection_id, tipo_id, estagio_id) VALUES
('Pikachu', 60, 'Terra', 'Metálico', '1 Incolor', 25, 1, 4, 1),
('Charmander', 50, 'Água', 'Grama', '1 Incolor', 4, 1, 1, 1),
('Squirtle', 50, 'Elétrico', 'Fogo', '1 Incolor', 7, 1, 2, 1),
('Bulbasaur', 60, 'Fogo', 'Água', '1 Incolor', 1, 1, 3, 1),
('Mewtwo', 120, 'Psíquico', 'Nenhum', '2 Incolor', 10, 2, 5, 2);

-- Relacionando cartas e ataques
INSERT INTO tbl_card_attacks (card_id, attack_id) VALUES
(1, 1), -- Pikachu -> Choque do Trovão
(2, 2), -- Charmander -> Chama Furiosa
(3, 5), -- Squirtle -> Hidrobomba
(4, 4), -- Bulbasaur -> Investida Selvagem
(5, 3); -- Mewtwo -> Raio Psíquico