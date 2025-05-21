const odbc = require("odbc");

async function main() {
  const connectionString = `
    Driver=PostgreSQL;
    Server=localhost;
    Port=5422;
    Database=orm;
    Uid=admin;
    Pwd=admin123;
  `.replace(/\s+/g, "");

  try {
    const connection = await odbc.connect(connectionString);
    console.log("Conectado");
    await connection.close();
  } catch (err) {
    console.error("Erro:", err);
  }
}

main();
