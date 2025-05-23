import { PrismaClient } from "../generated/prisma";

const prisma = new PrismaClient();

async function criarAtividade() {
  const novaAtividade = await prisma.atividade.create({
    data: {
      descricao: "testando prisma",
      data_inicio: new Date("2025-05-01"),
      data_fim: new Date("2025-06-15"),
      projeto_atividade_projetoToprojeto: {
        connect: { codigo: 1 },
      },
    },
  });

  console.log(novaAtividade);
}

criarAtividade();
