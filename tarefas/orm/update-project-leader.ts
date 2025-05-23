import { PrismaClient } from "./generated/prisma/client";

const prisma = new PrismaClient();

async function atualizarLiderProjeto() {
  const projetoAtualizado = await prisma.projeto.update({
    where: { codigo: 1 },
    data: { responsavel: 4 },
  });

  console.log(projetoAtualizado);
}

atualizarLiderProjeto();
