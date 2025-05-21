import { Client } from "pg";

const client = new Client({
  user: "admin",
  host: "localhost",
  database: "orm",
  password: "admin123",
  port: 5422,
});

client
  .connect()
  .then(() => console.log("Conectado com sucesso!"))
  .catch((err) => console.error("Erro na conexão", err));
