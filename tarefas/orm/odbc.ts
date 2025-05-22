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

    // await connection.query(`
    //   INSERT INTO atividade (descricao, projeto, data_inicio, data_fim)
    //   VALUES ('Nova Atividade Teste', 1, '2025-05-01', '2025-05-20')
    // `);
    // console.log("Atividade inserida");

    await connection.query(`
      UPDATE projeto
      SET responsavel = 3
      WHERE codigo = 2
    `);
    console.log("Lider Atualizado");

    await connection.close();
  } catch (error) {
    console.error(error);
  }
}

main();
