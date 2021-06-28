# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Game.destroy_all

puts "Qestions destroyed ..."
Question.destroy_all

puts "DevSchools destroyed ..."
DevSchool.destroy_all

devschool1 = DevSchool.new(
    name: "Iron Hack",
    address: "Campus Ironhack Paris, 226 Boulevard Voltaire , 75011 - Paris (France)",
    duration: "9 semaines", 
    description: "Intègres notre bootcamp immersif en Développement Web et obtiens les compétences pratiques nécessaires pour trouver un emplois dans l’industrie en pleine essor de la tech. Maîtrises HTML, CSS, React Javascript et bien plus",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.ironhack.com/fr/developpement-web/paris",
    price: "8000€")

devschool2 = DevSchool.new(
    name: "Iron Hack",
    address: "Télétravail, Campus Ironhack Paris, 226 Boulevard Voltaire , 75011 - Paris (France)",
    duration: "24 semaines", 
    description: "Intègres notre bootcamp immersif en Développement Web et obtiens les compétences pratiques nécessaires pour trouver un emplois dans l’industrie en pleine essor de la tech. Maîtrises HTML, CSS, React Javascript et bien plus",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.ironhack.com/fr/developpement-web/paris",
    price: "8000€")

devschool3 = DevSchool.new(
    name: "Le Wagon",
    address: "2 Avenue des Saules, 59160 Lille",
    duration: "9 semaines", 
    description: "Notre formation Développeur Web à Lille est une expérience immersive qui vous fait passer de débutant à Développeur Web en 9 semaines. À la fin de la formation, vous saurez construire des applications web fonctionnelles qui répondent aux besoins de vos utilisateurs, vous saurez collaborer avec d'autres Développeurs, Designers et Product Managers avec le bon workflow et les bonnes pratiques web.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "httpas://www.lewagon.com/fr/lille/web-development-course/full-time",
    price: "6000€")

devschool4 = DevSchool.new(
    name: "Le Wagon",
    address: "télétravail, 2 Avenue des Saules, 59160 Lille",
    duration: "24 semaines", 
    description: "Notre formation Développeur Web à Lille est une expérience immersive qui vous fait passer de débutant à Développeur Web en 9 semaines. À la fin de la formation, vous saurez construire des applications web fonctionnelles qui répondent aux besoins de vos utilisateurs, vous saurez collaborer avec d'autres Développeurs, Designers et Product Managers avec le bon workflow et les bonnes pratiques web.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lewagon.com/fr/lille/web-development-course/part-time",
    price: "6000€")

devschool5 = DevSchool.new(
    name: "Le Wagon",
    address: " Télétravail, 107 Cours Balguerie Stuttenberg, 33300 Bordeaux",
    duration: "24 semaines", 
    description: "Apprenez à coder sur notre campus de Bordeaux et rejoignez une communauté de créateurs, entrepreneurs et développeurs qui ont changé de vie avec nous.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lewagon.com/fr/bordeaux/web-development-course/part-time",
    price: "6000€")

devschool6 = DevSchool.new(
    name: "Le Wagon",
    address: "107 Cours Balguerie Stuttenberg, 33300 Bordeaux",
    duration: "9 semaines", 
    description: "Apprenez à coder sur notre campus de Bordeaux et rejoignez une communauté de créateurs, entrepreneurs et développeurs qui ont changé de vie avec nous.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lewagon.com/fr/bordeaux/web-development-course/full-time",
    price: "6000€")

devschool7 = DevSchool.new(
    name: "Le Wagon",
    address: "20 Rue des Capucins, 69001 Lyon",
    duration: "24 semaines", 
    description: "L'équipe du Wagon Lyon est passionnée par l'éducation. Son but : vous offrir la meilleure expérience pédagogique et vous aider à atteindre vos objectifs pendant et après la formation.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lewagon.com/fr/bordeaux/web-development-course/part-time",
    price: "6000€")

devschool8 = DevSchool.new(
    name: "Le Wagon",
    address: "20 Rue des Capucins, 69001 Lyon",
    duration: "9 semaines", 
    description: "L'équipe du Wagon Lyon est passionnée par l'éducation. Son but : vous offrir la meilleure expérience pédagogique et vous aider à atteindre vos objectifs pendant et après la formation.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lewagon.com/fr/bordeaux/web-development-course/full-time",
    price: "6000€")

devschool9 = DevSchool.new(
    name: "Le Wagon",
    address: "167 Rue Paradis, 13006 Marseille",
    duration: "24 semaines", 
    description: "Notre formation Développeur Web à Marseille est une expérience immersive qui vous fait passer de débutant à Développeur Web en 9 semaines. À la fin de la formation, vous saurez construire des applications web fonctionnelles qui répondent aux besoins de vos utilisateurs, vous saurez collaborer avec d'autres Développeurs, Designers et Product Managers avec le bon workflow et les bonnes pratiques web.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lewagon.com/fr/marseille/web-development-course/part-time",
    price: "6000€")

devschool10 = DevSchool.new(
    name: "Le Wagon",
    address: "167 Rue Paradis, 13006 Marseille",
    duration: "9 semaines", 
    description: "Notre formation Développeur Web à Marseille est une expérience immersive qui vous fait passer de débutant à Développeur Web en 9 semaines. À la fin de la formation, vous saurez construire des applications web fonctionnelles qui répondent aux besoins de vos utilisateurs, vous saurez collaborer avec d'autres Développeurs, Designers et Product Managers avec le bon workflow et les bonnes pratiques web.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lewagon.com/fr/marseille/web-development-course/full-time",
    price: "6000€")

devschool11 = DevSchool.new(
    name: "Le Wagon",
    address: "11 Rue La Noue Bras de Fer, 44200 Nantes",
    duration: "24 semaines", 
    description: "Nous n’arrêtons jamais d’apprendre. C’est pourquoi nos professeurs sont les meilleurs ! Nous adaptons constamment notre curriculum à mesure que chaque langage de programmation évolue, afin d’enseigner à nos étudiants les meilleures pratiques du développement web à Nantes .",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lewagon.com/fr/nantes/web-development-course/part-time",
    price: "6000€")

devschool12 = DevSchool.new(
    name: "Le Wagon",
    address: "11 Rue La Noue Bras de Fer, 44200 Nantes",
    duration: "9 semaines", 
    description: "Nous n’arrêtons jamais d’apprendre. C’est pourquoi nos professeurs sont les meilleurs ! Nous adaptons constamment notre curriculum à mesure que chaque langage de programmation évolue, afin d’enseigner à nos étudiants les meilleures pratiques du développement web à Nantes .",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lewagon.com/fr/nantes/web-development-course/full-time",
    price: "6000€")

devschool13 = DevSchool.new(
    name: "Le Wagon",
    address: "Startway Partners, Cedex 1 FR, 21 Avenue Thiers BP 1239, 06000 Nice",
    duration: "9 semaines", 
    description: "L'équipe du Wagon Nice est passionnée par l'éducation. Son but : vous offrir la meilleure expérience pédagogique et vous aider à atteindre vos objectifs pendant et après la formation.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lewagon.com/fr/nice/web-development-course/full-time",
    price: "6000€")

devschool14 = DevSchool.new(
    name: "Le Wagon",
    address: "16 Villa Gaudelet, 75011 Paris",
    duration: "9 semaines", 
    description: "L'équipe du Wagon Paris est passionnée par l'éducation. Son but : vous offrir la meilleure expérience pédagogique et vous aider à atteindre vos objectifs pendant et après la formation.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lewagon.com/fr/paris/web-development-course/full-time",
    price: "6900€")

devschool15 = DevSchool.new(
    name: "Le Wagon",
    address: "16 Villa Gaudelet, 75011 Paris",
    duration: "24 semaines", 
    description: "L'équipe du Wagon Paris est passionnée par l'éducation. Son but : vous offrir la meilleure expérience pédagogique et vous aider à atteindre vos objectifs pendant et après la formation.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lewagon.com/fr/paris/web-development-course/part-time",
    price: "6900€")

devschool16 = DevSchool.new(
    name: "Le Wagon",
    address: "1 Rue du Général Maurice Guillaudot, 35000 Rennes",
    duration: "9 semaines", 
    description: "Apprenez à coder et à construire une application web au centre de la Bretagne ! Rennes n'est pas seulement une ville riche historiquement, c'est aussi un pivot du numérique à l'Ouest de l'Europe. Avec une des plus fortes croissances de l’emploi du secteur numérique parmi les métropoles françaises, les possibilités de rencontres, de création et d'apprentissage sont énormes.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lewagon.com/fr/rennes/web-development-course/full-time",
    price: "6000€")

devschool17 = DevSchool.new(
    name: "Le Wagon",
    address: "1 Rue du Général Maurice Guillaudot, 35000 Rennes",
    duration: "24 semaines", 
    description: "Apprenez à coder et à construire une application web au centre de la Bretagne ! Rennes n'est pas seulement une ville riche historiquement, c'est aussi un pivot du numérique à l'Ouest de l'Europe. Avec une des plus fortes croissances de l’emploi du secteur numérique parmi les métropoles françaises, les possibilités de rencontres, de création et d'apprentissage sont énormes.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lewagon.com/fr/rennes/web-development-course/part-time",
    price: "6000€")

devschool18 = DevSchool.new(
    name: "Le Réacteur",
    address: "9 Rue du Château d'Eau, 75010 Paris",
    duration: "10 semaines", 
    description: "Pendant 10 semaines vous apprendrez la programmation au travers 6 modules. Chaque module vous apportera les compétences nécessaires pour aborder le module suivant. La matinée est dédiée à la correction des exercices de la veille ainsi qu'au cours du jour. Le reste de la journée, vous travaillerez sur des exercices pratiques, pour assimiler les nouvelles notions. Les deux dernières semaines de la formation sont dédiées aux projets. Vous réaliserez, pendant cette période, un site Web ou une application Mobile pour une startup ! Corinne, Brice et Alexis vous formeront pendant toute cette période.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lereacteur.io/bootcamp-javascript/formation-developpeur-web-mobile/",
    price: "7500€")

devschool19 = DevSchool.new(
    name: "Le Réacteur",
    address: "9 Rue du Château d'Eau, 75010 Paris",
    duration: "25 semaines", 
    description: "Pendant 25 semaines vous apprendrez la programmation au travers 6 modules. Chaque module vous apportera les compétences nécessaires pour aborder le module suivant. La matinée est dédiée à la correction des exercices de la veille ainsi qu'au cours du jour. Le reste de la journée, vous travaillerez sur des exercices pratiques, pour assimiler les nouvelles notions. Les deux dernières semaines de la formation sont dédiées aux projets. Vous réaliserez, pendant cette période, un site Web ou une application Mobile pour une startup ! Corinne, Brice et Alexis vous formeront pendant toute cette période.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lereacteur.io/bootcamp-javascript/formation-developpeur-web-mobile/",
    price: "6500€")

devschool20 = DevSchool.new(
    name: "Le Capsule",
    address: "IBC Business center, 5 Rue de l'Industrie, 98000 Monaco",
    duration: "10 semaines", 
    description: "Apprenez à coder dans notre campus de Monaco et rejoignez notre communauté d'experts de la tech, développeur ou développeuse web, intégrateur web, products owners, chef de projet digital, ou entrepreneurs !",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lacapsule.academy/coding-bootcamp-monaco",
    price: "7000€")

devschool21 = DevSchool.new(
    name: "Le Capsule",
    address: "51 Quai Lawton, 33300 Bordeaux",
    duration: "10 semaines", 
    description: "Apprenez à coder dans notre campus de Bordeaux et rejoignez notre communauté d'experts de la tech, développeur ou développeuse web, intégrateur web, products owners, chef de projet digital, ou entrepreneurs !",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lacapsule.academy/coding-bootcamp-bordeaux",
    price: "6000€")

devschool22 = DevSchool.new(
    name: "Le Capsule",
    address: "26 Rue de la République, 13001 Marseille",
    duration: "10 semaines", 
    description: "Apprenez à coder dans notre campus de Marseille et rejoignez notre communauté d'experts de la tech, développeur ou développeuse web, intégrateur web, products owners, chef de projet digital, ou entrepreneurs !",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lacapsule.academy/coding-bootcamp-marseille",
    price: "6000€")

devschool23 = DevSchool.new(
    name: "Le Capsule",
    address: "92 Cours Lafayette, 69003 Lyon",
    duration: "10 semaines", 
    description: "Apprenez à coder dans notre campus de Lyon et rejoignez notre communauté d'experts de la tech, développeur ou développeuse web, intégrateur web, products owners, chef de projet digital, ou entrepreneurs !",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lacapsule.academy/coding-bootcamp-lyon",
    price: "6000€")

devschool24 = DevSchool.new(
    name: "Le Capsule",
    address: "56 Boulevard Pereire, 75017 Paris",
    duration: "10 semaines", 
    description: "Apprenez à coder dans notre campus de Paris et rejoignez notre communauté d'experts de la tech, développeur ou développeuse web, intégrateur web, products owners, chef de projet digital, ou entrepreneurs !",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lacapsule.academy/coding-bootcamp-paris",
    price: "7000€")

devschool25 =DevSchool.new(
    name: "Oclock",
    address: "10 rue de Penthievre, 75008 Paris",
    duration: "6 mois", 
    description: "O’clock est une école de développement web en téléprésentiel. Chaque matin, du lundi au vendredi, les étudiants se connectent via leur ordinateur personnel à nos salles de classe virtuelles pour assister au cours animé en direct-vidéo par nos formateurs. Échanges en temps réel, suivi individualisé et continu, challenges de l’après-midi pour s’entraîner, évaluations, projets. Le tout, accessible à distance et en chaussons.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://oclock.io/formations/developpeur-web",
    price: "6500€")

devschool26 = DevSchool.new(
    name: "Wild Code School",
    address: "La Loupe 28240",
    duration: "5 mois", 
    description: "Formation développeur front-end à temps partiel : formez-vous tout en continuant à travailler ! Apprenez à coder en JavaScript / React pour devenir Développeur front-end en 5 mois avec notre formation à distance (en téléprésentiel).",  
    payment_facilities: true,
    certifying: true,
    category: "Front-end",
    url: "https://www.wildcodeschool.com/fr-FR/formations/formation-developpeur-front-end/remote-francais",
    price: "4050€")

devschool27 = DevSchool.new(
    name: "OpenClassRooms",
    address: "La Loupe 28240",
    duration: "12 mois", 
    description: "Devenez qui vous voulez être avec OpenClassrooms. Choisissez votre carrière. Suivez une formation constituée de projets professionnalisants et de séances individuelles avec un mentor dédié chaque semaine. Obtenez un diplôme reconnu par l'État. Enrichissez votre CV avec les programmes en alternance proposés par OpenClassrooms et gagnez un salaire tout en suivant votre formation.",  
    payment_facilities: true,
    certifying: true,
    category: "Front-end",
    url: "https://openclassrooms.com/fr/paths/314-developpeur-front-end#path_start",
    price: "300€ / mois")

    puts "Creating DevSchools...."

    devschool1.save
    devschool2.save
    devschool3.save
    devschool4.save
    devschool5.save
    devschool6.save
    devschool7.save
    devschool8.save
    devschool9.save
    devschool10.save
    devschool11.save
    devschool12.save
    devschool13.save
    devschool14.save
    devschool15.save
    devschool16.save
    devschool17.save
    devschool18.save
    devschool19.save
    devschool20.save
    devschool21.save
    devschool22.save
    devschool23.save
    devschool24.save
    devschool25.save
    devschool26.save
    devschool27.save
puts "DevSchools created !"



question1 = Question.new(order: 1, content: "Dirais-tu que tu es créatif ?", category: "Front-end")
question2 = Question.new(order: 2, content: "Aimes-tu quand tout est bien ordonné ?", category: "Front-end")
question3 = Question.new(order: 3, content: "Tu n'aimes pas passer du temps à trouver une solution ?", category: "Front-end")
question4 = Question.new(order: 4, content: "C'est plus important qu'un produit soit joli plutôt que fonctionnel ?", category: "Front-end")
question5 = Question.new(order: 5, content: "Aimes-tu travailler seul ?", category: "Front-end")
question6 = Question.new(order: 6, content: "Aimes tu travailler dans l'ombre ?", category: "Front-end")
puts "Creating questions ...."

question1.save
question2.save
question3.save
question4.save
question5.save
question6.save
puts "Questions created !"

puts "DB cleaned"
user1 = User.create!(email:"youssef@email.com",password:"azerty",profile_type:"front-end")
puts "User created"
game1 = Game.create!(title: "Votre première bannière", short_description: "Reproduis une page en code Html",category:"html",order: 1, difficulty: 1)
game2 = Game.create!(title: "Flexbox froggy", short_description: "Aidez Froggy la grenouille à atteindre le nénuphar en écrivant du code CSS!", category:"css",order: 2,  difficulty: 2)
game3 = Game.create!(title: "Miniature Golf Game", short_description: "Une petite partie de mini golf!", category:"css", order: 3,  difficulty: 2)
puts "Games created"
users = User.all
games = Game.all
users.each do |user|
    games.each do |game|
        UserGame.create!(user: user, game: game, unlocked: game.order == 1)
    end
end
