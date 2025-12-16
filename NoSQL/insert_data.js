use viagens; //criar database

//criar collections
db.createCollection("usuarios")
db.createCollection("destinos")
db.createCollection("reservas")

//inserir documentos
db.usuarios.insertOne( //somente 1
    {   
    "_id": 1,
    "nome": "Ana Paula Silva",
    "idade": 28,
    "data_nascimento": "1995-05-15T08:00:00Z",
    "endereco": {
      "logradouro": "Rua das Flores, 123",
      "bairro": "Centro",
      "cidade": "São Paulo",
      "estado": "SP"
    });
      
db.usuarios.insertMany([ //vários
    {
    "_id": 2,
    "nome": "Carlos Eduardo Santos",
    "idade": 35,
    "data_nascimento": "1988-10-20T14:30:00Z",
    "endereco": {
      "logradouro": "Av. Paulista, 900",
      "bairro": "Bela Vista",
      "cidade": "São Paulo",
      "estado": "SP"
    }
  },
  {
    "_id": 3,
    "nome": "Mariana Oliveira",
    "idade": 22,
    "data_nascimento": "2001-02-10T09:15:00Z",
    "endereco": {
      "logradouro": "Rua do Porto, 55",
      "bairro": "Comércio",
      "cidade": "Salvador",
      "estado": "BA"
    }
  },
  {
    "_id": 4,
    "nome": "Roberto Mendes",
    "idade": 40,
    "data_nascimento": "1983-07-05T18:00:00Z",
    "endereco": {
      "logradouro": "Rua XV de Novembro, 1020",
      "bairro": "Alto da Glória",
      "cidade": "Curitiba",
      "estado": "PR"
    }
  },
  {
    "_id": 5,
    "nome": "Fernanda Costa",
    "idade": 31,
    "data_nascimento": "1992-12-01T10:45:00Z",
    "endereco": {
      "logradouro": "Av. Beira Mar, 300",
      "bairro": "Meireles",
      "cidade": "Fortaleza",
      "estado": "CE"
    },
]);

db.destinos.insertOne([
  {
    "_id": 201,
    "nome": "Parque Ibirapuera",
    "descricao": "O mais importante parque urbano da cidade, com museus, auditórios e ampla área verde para lazer e esporte.",
    "localizacao": {
      "type": "Point",
      "coordinates": [ -46.657634, -23.587416 ]
    }
  },
  {
    "_id": 202,
    "nome": "Avenida Paulista",
    "descricao": "O cartão-postal de São Paulo, polo cultural e econômico que abriga o MASP, shoppings e centros financeiros.",
    "localizacao": {
      "type": "Point",
      "coordinates": [ -46.655900, -23.561400 ]
    }
  },
  {
    "_id": 203,
    "nome": "Mercado Municipal de São Paulo",
    "descricao": "Conhecido como Mercadão, é famoso pela variedade de frutas, temperos e pelo sanduíche de mortadela.",
    "localizacao": {
      "type": "Point",
      "coordinates": [ -46.629400, -23.541900 ]
    }
  },
  {
    "_id": 204,
    "nome": "Pinacoteca do Estado",
    "descricao": "Um dos museus de arte mais importantes do Brasil, localizado no Jardim da Luz, com acervo focado na produção brasileira.",
    "localizacao": {
      "type": "Point",
      "coordinates": [ -46.633900, -23.534400 ]
    }
  },
  {
    "_id": 205,
    "nome": "Beco do Batman",
    "descricao": "Galeria de arte a céu aberto na Vila Madalena, com muros cobertos de grafites que são renovados constantemente.",
    "localizacao": {
      "type": "Point",
      "coordinates": [ -46.686700, -23.556400 ]
    }
  }
]);

db.reservas.insertMany([
  {
    "_id": 123,
    "usuario": 1,
    "destino": 201,
    "data": "2024-03-10T09:00:00Z",
    "status": "confirmada"
  },
  {
    "_id": 124,
    "usuario": 2,
    "destino": 202,
    "data": "2024-03-12T14:30:00Z",
    "status": "pendente"
  },
  {
    "_id": 125,
    "usuario": 3,
    "destino": 205,
    "data": "2024-03-15T16:00:00Z",
    "status": "confirmada"
  },
  {
    "_id": 126,
    "usuario": 1,
    "destino": 203,
    "data": "2024-04-01T11:00:00Z",
    "status": "cancelada"
  },
  {
    "_id": 127,
    "usuario": 4,
    "destino": 204,
    "data": "2024-04-05T10:00:00Z",
    "status": "confirmada"
  },
  {
    "_id": 128,
    "usuario": 5,
    "destino": 201,
    "data": "2024-04-10T08:30:00Z",
    "status": "pendente"
  }
]);
