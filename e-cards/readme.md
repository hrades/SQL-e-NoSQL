# 🃏 Pokémon TCG Database

Um projeto de banco de dados para armazenar e gerenciar informações relacionadas ao **Pokémon Trading Card Game (TCG)**.  
O objetivo é fornecer uma estrutura organizada para catalogar cartas, coleções, tipos, habilidades e estatísticas, permitindo consultas rápidas e integrações com aplicações externas.

---

## 📌 Funcionalidades

- Armazenar informações detalhadas de cartas:
  - Nome
  - Tipo (Fogo, Água, Planta, etc.)
  - Coleção
  - HP, ataques e habilidades
- Relacionar cartas a coleções oficiais do TCG
- Consultar estatísticas de cartas por tipo ou expansão

---

## 🗂️ Estrutura do Banco de Dados

### Principais tabelas

| Tabela       | Descrição |
|--------------|-----------|
| **cards**    | Informações principais das cartas (nome, tipo, HP, raridade, expansão). |
| **collections** | Coleções oficiais do TCG. |
| **types**    | Tipos de energia (Fogo, Água, Planta, Elétrico, etc.). |
| **attacks**  | Lista de ataques associados às cartas, incluindo custo e dano. |
| **abilities**| Habilidades especiais das cartas. |

---

## 🚀 Tecnologias Utilizadas

- **Banco de dados:** MySQL  
- **Ferramentas de IA:** Microsof Copilot (criação de seeds)

---

## 📖 Exemplos de Consultas

```sql
-- Listar todas as cartas com seus dados principais
SELECT id, nome, hp, fraqueza 
FROM tbl_cards;

-- Encontrar HP maior que 100
SELECT nome, hp 
FROM tbl_cards 
WHERE hp > 100 
ORDER BY hp DESC;

-- Buscar cartas de uma coleção específica pelo número da carta:
SELECT * FROM tbl_cards 
WHERE numero_colecao < 10;

-- Criar ataques
INSERT INTO tbl_attacks (nome_ataque, energia_necessaria, dano, efeito) VALUES 
('Choque do Trovão', '1 Elétrica', 30, 'Jogue uma moeda. Se der cara, o oponente fica paralisado.'),
('Lança-Chamas', '1 Fogo, 2 Incolor', 90, 'Descarte uma energia de fogo.'),
('Arranhão', '1 Incolor', 10, NULL);
```
