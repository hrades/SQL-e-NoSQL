CREATE TABLE viagens.usuarios (
  id INT,
  nome VARCHAR(255) NOT NULL COMMENT 'Nome do usuário',
  email VARCHAR(255) NOT NULL UNIQUE COMMENT 'Endereço de e-mail do usuário',
  data_nascimento DATE NOT NULL COMMENT 'Data de nascimento do usuário',
  endereco VARCHAR(50) NOT NULL COMMENT 'Endereço do Cliente'
);

CREATE TABLE viagens.reservas (
	  id INT COMMENT 'Identificador da reserva',
    idUsuario INT COMMENT 'Id de referência do usuário',
    idDestino INT COMMENT 'Id de referência do destino',
    dataReserva DATE,
    statusReserva VARCHAR(255) DEFAULT 'pendente' COMMENT '(confirmado, pendente, cancelado...)'
)

CREATE TABLE viagens.destinos (
	  id INT,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL
)

CREATE TABLE usuarios_nova (
  id INT,
  nome VARCHAR(255) NOT NULL COMMENT 'Nome do usuário',
  email VARCHAR(255) NOT NULL UNIQUE COMMENT 'Endereço de e-mail do usuário',
  data_nascimento DATE NOT NULL COMMENT 'Data de nascimento do usuário',
  endereco VARCHAR(100) NOT NULL COMMENT 'Endereço do Cliente'
);
