import { PrismaClient } from "../generated/prisma/client";

const prisma = new PrismaClient();

async function listarProjetosComAtividades() {
  const projetos = await prisma.projeto.findMany({
    include: {
      atividade_atividade_projetoToprojeto: true,
    },
  });

  projetos.forEach((projeto) => {
    console.log(`Projeto: ${projeto.nome}`);
    projeto.atividade_atividade_projetoToprojeto.forEach((atividade) => {
      console.log(`  - Atividade: ${atividade.descricao}`);
    });
  });
}

listarProjetosComAtividades();
