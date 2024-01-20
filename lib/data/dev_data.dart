import 'package:my_portfolio/models/dev_models.dart';

/// custom data for storing developer data
class DevData {
  DevData._();

  static DevModels devData = DevModels(
    name: 'Rodrigo Thenopholo',
    number: '(11) 94312-0992',
    email: 'thenopholo92@gmail.com',
    bio:
        'Hey! 👋 Sou Rodrigo, designer sênior apaixonado por desenvolvimento de software. Sou especialista na criação de aplicativos web e mobile com foco na experiência do usuário e na estética das interfaces. 🎨💻 Conecte-se comigo no GitHub e Reddit para ver meus projetos mais recentes e participar da conversa. Vamos criar algo incrível juntos! ✨🚀',
    hobbies: <String>[
      "Codar em Dart",
      "Treinar na academia",
      "Andar de Skate",
    ],
    skillsAndProgress: <SkillsAndProgress>[
      SkillsAndProgress(
        name: 'Engenharia de Software',
        progress: 0.5,
      ),
      SkillsAndProgress(
        name: 'Desenvolvimento em Flutter',
        progress: 0.6,
      ),
      SkillsAndProgress(
        name: 'Desing Gráfico',
        progress: 1,
      ),
      SkillsAndProgress(
        name: 'Motion Design',
        progress: 1,
      ),
      SkillsAndProgress(
        name: 'Desenvolvimento Web',
        progress: 0.8,
      ),
      SkillsAndProgress(
        name: 'Desenvolvimento Mobile',
        progress: 0.7,
      ),
    ],
  );
}
