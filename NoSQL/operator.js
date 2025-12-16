// Operadores Lógicos
db.usuarios.find({ $and: [{ idade: { $gte: 18 } }, { cidade: "São Paulo" }] });

db.usuarios.find({ $or: [{ idade: { $lt: 18 } }, { cidade: "Rio de Janeiro" }] });

db.usuarios.find({ idade: { $not: { $eq: 25 } } });

// Operadores de Comparação
db.usuarios.find({ idade: { $eq: 25 } });

db.usuarios.find({ idade: { $ne: 30 } });

db.usuarios.find({ idade: { $gt: 30 } });

db.usuarios.find({ idade: { $gte: 30 } });

db.usuarios.find({ idade: { $lt: 30 } });

db.usuarios.find({ idade: { $lte: 30 } });

db.usuarios.find({ cidade: { $in: ["São Paulo", "Rio de Janeiro"] } });

db.usuarios.find({ cidade: { $nin: ["São Paulo", "Rio de Janeiro"] } });
