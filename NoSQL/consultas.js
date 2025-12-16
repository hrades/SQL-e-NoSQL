// Find
db.usuarios.find({});
db.usuarios.find({"nome": "João"});
db.usuarios.findOne({"nome": "João"});
db.usuarios.findOneAndUpdate({ nome: "João" }, { $set: { idade: 26 } });
db.usuarios.findOneAndDelete({ nome: "João" });

// Update
db.usuarios.updateOne(
  { nome: "João" },
  { $set: { idade: 26 } }
);

db.usuarios.updateMany(
  { cidade: "São Paulo" },
  { $set: { estado: "SP" } }
);

db.usuarios.replaceOne(
  { nome: "João" },
  {
    nome: "John",
    idade: 27,
    cidade: "São Paulo",
    estado: "SP",
    endereco: {
      logradouro: "Avenida Principal",
      numero: 123
    }
  }
);

// Update Operadores
// Usando o operador $set para definir o valor de um campo específico
db.usuarios.updateOne({ nome: "João" }, { $set: { idade: 26 } });

// Usando o operador $inc para incrementar o valor de um campo numérico
db.usuarios.updateOne({ nome: "João" }, { $inc: { idade: 1 } });

// Usando o operador $rename para renomear um campo existente
db.usuarios.updateOne({ nome: "João" }, { $rename: { "endereco.rua": "endereco.nomeRua" } });

// Usando o operador $unset para remover um campo específico de um documento
db.usuarios.updateOne({ nome: "João" }, { $unset: { endereco: "" } });

// Delete
db.usuarios.deleteOne({nome: "João"}); // Exclui o 1o que achar
db.usuarios.deleteMany({nome: "Pamela"}); // Exclui todos

// Projeção
db.usuarios.find({}, { nome: 1, idade: 1 })

// Ordenação
db.usuarios.find().sort({ idade: 1 })

// Limitação
db.usuarios.find().limit(10)

// Paginação
db.usuarios.find().skip(10).limit(5)
