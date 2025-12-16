USE db_tcgpokemon;

CREATE VIEW vw_cards_detalhadas AS
SELECT 
    c.id,
    c.nome,
    c.hp,
    c.fraqueza,
    c.resistencia,
    c.custo_recuo,
    c.numero_colecao,
    
    col.nome_colecao AS nome_colecao,
    col.data_lancamento AS data_lancamento_colecao,
    col.quantidade_cartas AS quantidade_cartas_colecao,
    
    t.nome_tipo AS tipo,
    s.nome_estagio AS estagio
    
FROM tbl_cards c
LEFT JOIN tbl_collections col ON c.collection_id = col.id
LEFT JOIN tbl_types t ON c.tipo_id = t.id
LEFT JOIN tbl_stages s ON c.estagio_id = s.id;