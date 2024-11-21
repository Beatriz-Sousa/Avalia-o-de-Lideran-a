# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end



puts("")
Question.find_or_create_by(title: "Você se sente confortável ao assumir riscos em novas iniciativas?",
  option_1: "Nunca",
  option_2: "Às vezes",
  option_3: "Frequentemente",
  option_4: "Sempre"
)

puts("")
Question.find_or_create_by(title: "Como você lida com conflitos entre membros da equipe?",
  option_1: "Não me envolvo",
  option_2: "Ignoro até que se torne um problema",
  option_3: "Tento mediar",
  option_4: "Busco resolver imediatamente"
)

puts("")
Question.find_or_create_by(title: "Você prefere trabalhar em equipe ou de forma independente?",
  option_1: "Sempre sozinha",
  option_2: "Às vezes sozinha",
  option_3: "Na maioria das vezes em equipe",
  option_4: "Sempre em equipe"
)

puts("")
Question.find_or_create_by(title: "Como você incentiva a criatividade dentro da sua equipe?",
  option_1: "Não faço nada específico",
  option_2: "Deixo espaço para ideias",
  option_3: "Ofereço feedback positivo",
  option_4: "Promovo brainstorming regularmente"
)

puts("")
Question.find_or_create_by(title: "Você costuma estabelecer metas claras para sua equipe?",
  option_1: "Nunca",
  option_2: "Às vezes",
  option_3: "Frequentemente",
  option_4: "Sempre"
)

puts("")
Question.find_or_create_by(title: "Como você reage a feedback negativo?",
  option_1: "Ignoro",
  option_2: "Fico na defensiva",
  option_3: "Avalio e ajusto",
  option_4: "Aceito e busco melhorar"
)

puts("")
Question.find_or_create_by(title: "Você se considera um bom ouvinte?",
  option_1: "Não, raramente",
  option_2: "Às vezes",
  option_3: "Na maioria das vezes",
  option_4: "Sim, sempre"
)

puts("")
Question.find_or_create_by(title: "Como você motiva sua equipe em tempos difíceis?",
  option_1: "Evito o contato",
  option_2: "Deixo que se resolvam",
  option_3: "Tento manter a moral alta",
  option_4: "Encorajo e apoio"
)

puts("")
Question.find_or_create_by(title: "Você busca constantemente aprender novas habilidades?",
  option_1: "Nunca",
  option_2: "Às vezes",
  option_3: "Frequentemente",
  option_4: "Sempre"
)

puts("")
Question.find_or_create_by(title: "Como você equilibra autoridade e colaboração?",
  option_1: "Não me preocupo com isso",
  option_2: "Prefiro ser mais autoritário",
  option_3: "Às vezes tenho dificuldade",
  option_4: "Faço isso de forma equilibrada"
)

puts("")
Question.find_or_create_by(title: "Você se sente confortável em delegar tarefas?",
  option_1: "Nunca",
  option_2: "Às vezes",
  option_3: "Frequentemente",
  option_4: "Sempre"
)

puts("")
Question.find_or_create_by(title: "Como você aborda a tomada de decisões difíceis?",
  option_1: "Evitando a decisão",
  option_2: "Decidindo rapidamente",
  option_3: "Consultando a equipe",
  option_4: "Analisando todas as opções"
)

puts("")
Question.find_or_create_by(title: "Você costuma adaptar seu estilo de liderança a diferentes situações?",
  option_1: "Nunca",
  option_2: "Às vezes",
  option_3: "Frequentemente",
  option_4: "Sempre"
)

puts("")
Question.find_or_create_by(title: "Como você celebra as conquistas da sua equipe?",
  option_1: "Não faço",
  option_2: "Apenas verbalmente",
  option_3: "Reconhecimento informal",
  option_4: "Comemorações formais"
)

puts("")
Question.find_or_create_by(title: "Você se preocupa com o bem-estar dos membros da sua equipe?",
  option_1: "Nunca",
  option_2: "Às vezes",
  option_3: "Frequentemente",
  option_4: "Sempre"
)

puts("")
Question.find_or_create_by(title: "Como você lida com a pressão de prazos apertados?",
  option_1: "Desisto",
  option_2: "Fico ansioso",
  option_3: "Trabalho mais",
  option_4: "Organizo melhor o tempo"
)

puts("")
Question.find_or_create_by(title: "Você costuma buscar a opinião da sua equipe antes de tomar decisões?",
  option_1: "Nunca",
  option_2: "Às vezes",
  option_3: "Frequentemente",
  option_4: "Sempre"
)

puts("")
Question.find_or_create_by(title: "Como você promove a diversidade e inclusão na sua equipe?",
  option_1: "Não é uma prioridade",
  option_2: "Não faço nada específico",
  option_3: "Incentivando a diversidade",
  option_4: "Através de treinamentos"
)

puts("")
Question.find_or_create_by(title: "Você se considera um líder acessível?",
  option_1: "Não, raramente",
  option_2: "Às vezes",
  option_3: "Na maioria das vezes",
  option_4: "Sim, sempre"
)

puts("")
Question.find_or_create_by(title: "Como você gerencia seu tempo e prioridades?",
  option_1: "Não planejo",
  option_2: "Tendo uma ideia geral",
  option_3: "Faço listas",
  option_4: "Com um planejamento rigoroso"
)

puts("")
Question.find_or_create_by(title: "Você se envolve nas atividades cotidianas da equipe?",
  option_1: "Raramente",
  option_2: "Às vezes",
  option_3: "Frequentemente",
  option_4: "Sempre"
)

puts("")
Question.find_or_create_by(title: "Como você lida com críticas construtivas?",
  option_1: "Ignoro",
  option_2: "Fico chateado",
  option_3: "Avalio a crítica",
  option_4: "Aceito com gratidão"
)

puts("")
Question.find_or_create_by(title: "Você tem uma visão clara de onde quer levar sua equipe?",
  option_1: "Não, raramente",
  option_2: "Às vezes",
  option_3: "Frequentemente",
  option_4: "Sim, sempre"
)

puts("")
Question.find_or_create_by(title: "Como você promove a confiança entre os membros da equipe?",
  option_1: "Não faço nada específico",
  option_2: "Incentivando a colaboração",
  option_3: "Sendo honesto",
  option_4: "Com transparência"
)

puts("")
Question.find_or_create_by(title: "Você costuma buscar mentorias ou coaching para si mesmo?",
  option_1: "Nunca",
  option_2: "Às vezes",
  option_3: "Frequentemente",
  option_4: "Sempre"
)

puts("")
Question.find_or_create_by(title: "Como você lida com a resistência a mudanças?",
  option_1: "Evitando mudanças",
  option_2: "Ignorando",
  option_3: "Explicando os benefícios",
  option_4: "Buscando entender as preocupações"
)

puts("")
Question.find_or_create_by(title: "Você valoriza a transparência na comunicação?",
  option_1: "Raramente",
  option_2: "Às vezes",
  option_3: "Frequentemente",
  option_4: "Sempre"
)

puts("")
Question.find_or_create_by(title: "Como você incentiva a autonomia na sua equipe?",
  option_1: "Controlando tudo",
  option_2: "Dando liberdade",
  option_3: "Oferecendo orientação",
  option_4: "Delegando tarefas"
)

puts("")
Question.find_or_create_by(title: "Você costuma reconhecer os esforços individuais?",
  option_1: "Nunca",
  option_2: "Às vezes",
  option_3: "Frequentemente",
  option_4: "Sempre"
)

puts("")
Question.find_or_create_by(title: "Como você enfrenta desafios inesperados?",
  option_1: "Ignorando",
  option_2: "Com estresse",
  option_3: "Com flexibilidade",
  option_4: "Com planejamento"
<<<<<<<<< Temporary merge branch 1
)
=========
)
>>>>>>>>> Temporary merge branch 2
