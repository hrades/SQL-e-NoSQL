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
