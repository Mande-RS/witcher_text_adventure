class Scene {
  final String description;
  final List<Choice> choices;

  Scene({required this.description, required this.choices});
}

class Choice {
  final String description;
  final int nextSceneId;

  Choice({required this.description, required this.nextSceneId});
}

final scenes = {
  0: Scene(
    description:
        'Você é Geralt de Rivia, parado em uma encruzilhada. Ao norte fica uma floresta densa, ao leste uma caverna escura e ao oeste uma vila movimentada.',
    choices: [
      Choice(description: 'Vá para o norte na floresta', nextSceneId: 1),
      Choice(description: 'Entre na caverna escura', nextSceneId: 2),
      Choice(description: 'Vá para oeste até a vila', nextSceneId: 3),
    ],
  ),
  1: Scene(
    description:
        'Você se aventura na floresta e encontra uma matilha de lobos.',
    choices: [
      Choice(description: 'Lute contra os lobos', nextSceneId: 4),
      Choice(description: 'Corra de volta para a encruzilhada', nextSceneId: 0),
    ],
  ),
  2: Scene(
    description: 'Dentro da caverna você encontra um dragão adormecido.',
    choices: [
      Choice(description: 'Passe furtivamente pelo dragão', nextSceneId: 5),
      Choice(description: 'Ataque o dragão', nextSceneId: 6),
    ],
  ),
  3: Scene(
    description:
        'A aldeia está cheia de vida. As pessoas estão agitadas e você vê um quadro de avisos com missões.',
    choices: [
      Choice(description: 'Leia o quadro de avisos', nextSceneId: 7),
      Choice(description: 'Fale com os aldeões', nextSceneId: 8),
    ],
  ),
  4: Scene(
    description:
        'Você luta bravamente contra os lobos e os derrota, mas fica ferido.',
    choices: [
      Choice(
          description: 'Procure ervas medicinais na floresta', nextSceneId: 9),
      Choice(description: 'Volte para a encruzilhada', nextSceneId: 0),
    ],
  ),
  5: Scene(
    description: 'Você passa furtivamente pelo dragão e encontra um tesouro.',
    choices: [
      Choice(description: 'Pegue o tesouro e saia da caverna', nextSceneId: 10),
      Choice(description: 'Explore mais a caverna', nextSceneId: 11),
    ],
  ),
  6: Scene(
    description: 'Você ataca o dragão, mas é derrotado e morre. Fim de jogo.',
    choices: [
      Choice(description: 'Recomeçar na encruzilhada', nextSceneId: 0),
    ],
  ),
  7: Scene(
    description: 'O quadro de avisos tem várias missões. Qual você escolhe?',
    choices: [
      Choice(description: 'Caçar um grifo', nextSceneId: 12),
      Choice(description: 'Resgatar uma donzela', nextSceneId: 13),
    ],
  ),
  8: Scene(
    description: 'Os aldeões contam sobre problemas recentes com monstros.',
    choices: [
      Choice(description: 'Ofereça ajuda', nextSceneId: 14),
      Choice(description: 'Ignore e continue sua jornada', nextSceneId: 0),
    ],
  ),
  9: Scene(
    description:
        'Você encontra ervas medicinais e trata seus ferimentos. Você se sente revigorado.',
    choices: [
      Choice(description: 'Continue explorando a floresta', nextSceneId: 15),
      Choice(description: 'Volte para a encruzilhada', nextSceneId: 0),
    ],
  ),
  10: Scene(
    description: 'Você pega o tesouro e sai da caverna. O que você faz agora?',
    choices: [
      Choice(description: 'Volte para a encruzilhada', nextSceneId: 0),
      Choice(description: 'Vá para a vila com o tesouro', nextSceneId: 3),
    ],
  ),
  11: Scene(
    description: 'Você encontra um monstro dentro da caverna.',
    choices: [
      Choice(description: 'Lute contra o monstro', nextSceneId: 16),
      Choice(description: 'Fuja do monstro', nextSceneId: 0),
    ],
  ),
  12: Scene(
    description: 'Você sai em busca do grifo. Após um tempo, você o encontra.',
    choices: [
      Choice(description: 'Ataque o grifo', nextSceneId: 17),
      Choice(description: 'Espere e observe', nextSceneId: 18),
    ],
  ),
  13: Scene(
    description: 'Você vai até a torre onde a donzela está presa.',
    choices: [
      Choice(description: 'Suba a torre e resgate a donzela', nextSceneId: 19),
      Choice(description: 'Espere do lado de fora por ajuda', nextSceneId: 20),
    ],
  ),
  14: Scene(
    description:
        'Os aldeões agradecem e oferecem uma recompensa. Você agora é um herói local.',
    choices: [
      Choice(
          description: 'Aceite a recompensa e fique na vila', nextSceneId: 0),
      Choice(description: 'Recuse e continue sua jornada', nextSceneId: 0),
    ],
  ),
  15: Scene(
    description:
        'Você encontra um esconderijo de bandidos na floresta. O que você faz?',
    choices: [
      Choice(description: 'Ataque os bandidos', nextSceneId: 16),
      Choice(
          description: 'Espione-os e planeje uma estratégia', nextSceneId: 18),
    ],
  ),
  16: Scene(
    description:
        'Você luta bravamente, mas os inimigos são muitos. Você acaba sendo derrotado. Fim de jogo.',
    choices: [
      Choice(description: 'Recomeçar na encruzilhada', nextSceneId: 0),
    ],
  ),
  17: Scene(
    description:
        'Você derrota o grifo após uma dura batalha. Você é vitorioso!',
    choices: [
      Choice(
          description: 'Volte para a vila para reclamar sua recompensa',
          nextSceneId: 3),
      Choice(description: 'Continue sua jornada como herói', nextSceneId: 0),
    ],
  ),
  18: Scene(
    description:
        'Você observa e aprende os padrões do seu inimigo, ganhando uma vantagem.',
    choices: [
      Choice(description: 'Ataque com a vantagem', nextSceneId: 17),
      Choice(description: 'Continue observando', nextSceneId: 19),
    ],
  ),
  19: Scene(
    description:
        'Com cuidado, você consegue resgatar a donzela e escapar da torre. Você é um herói!',
    choices: [
      Choice(description: 'Leve a donzela para a vila', nextSceneId: 3),
      Choice(description: 'Continue sua jornada sozinho', nextSceneId: 0),
    ],
  ),
  20: Scene(
    description: 'Você espera do lado de fora, mas ninguém vem. Fim de jogo.',
    choices: [
      Choice(description: 'Recomeçar na encruzilhada', nextSceneId: 0),
    ],
  ),
};
