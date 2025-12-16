-- Abrir o banco de dados (senão dá erro)
USE db_tcgpokemon;
-- Tabela de coleções
CREATE TABLE tbl_collections (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_colecao VARCHAR(100) NOT NULL,
    data_lancamento DATE NOT NULL,
    quantidade_cartas INT NOT NULL
);

-- Tabela de tipos elementais
CREATE TABLE tbl_types (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_tipo VARCHAR(50) NOT NULL
);

-- Tabela de estágios
CREATE TABLE tbl_stages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_estagio VARCHAR(50) NOT NULL
);

-- Tabela de ataques
CREATE TABLE tbl_attacks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_ataque VARCHAR(100) NOT NULL,
    energia_necessaria VARCHAR(100) NOT NULL,
    dano INT NOT NULL,
    efeito TEXT
);

-- Tabela de cartas
CREATE TABLE tbl_cards (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    hp INT NOT NULL,
    fraqueza VARCHAR(50),
    resistencia VARCHAR(50),
    custo_recuo VARCHAR(50),
    numero_colecao INT NOT NULL,

    collection_id INT,
    tipo_id INT,
    estagio_id INT,

    FOREIGN KEY (collection_id) REFERENCES tbl_collections(id),
    FOREIGN KEY (tipo_id) REFERENCES tbl_types(id),
    FOREIGN KEY (estagio_id) REFERENCES tbl_stages(id)
);

CREATE TABLE tbl_card_attacks (
    card_id INT NOT NULL,
    attack_id INT NOT NULL,
    PRIMARY KEY (card_id, attack_id),
    FOREIGN KEY (card_id) REFERENCES tbl_cards(id),
    FOREIGN KEY (attack_id) REFERENCES tbl_attacks(id)
);