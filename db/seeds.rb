# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)






User.destroy_all
Game.destroy_all

puts "Questions destroyed ..."
Question.destroy_all

puts "DevSchools destroyed ..."
DevSchool.destroy_all

# photo_ironhack = URI.open("https://s3.amazonaws.com/f6s-public/profiles/409597_original.jpg")
# photo_reacteur = URI.open("https://secure.meetupstatic.com/photos/event/8/a/c/0/600_480335520.jpeg")
# photo_wagon = URI.open("https://dwj199mwkel52.cloudfront.net/assets/lewagon-logo-square-b6124eb974be375884558e4464efce48a9b5664f18422768156364363ecdd1fc.png")
# photo_capsule = URI.open("https://www.kicklox.com/wp-content/uploads/2020/10/la-capsule-logo.png")
# photo_oclock = URI.open("https://21douze.fr/wp-content/uploads/2018/10/Logo-noir-vert-800x400.png")
# photo_wsc = URI.open("https://www.frenchtechbordeaux.com/wp-content/uploads/2019/03/LOGOS_WCS-02.jpg")
# photo_ocr = URI.open("https://i1.wp.com/espaceemploi.grigny69.net/wp-content/uploads/2019/09/OpenClassroom-logo2.png")

devschool1 = DevSchool.new(
    name: "Iron Hack",
    address: "226 Boulevard Voltaire , 75011 Paris",
    duration: "9 semaines", 
    description: "Intègres notre bootcamp immersif en Développement Web et obtiens les compétences pratiques nécessaires pour trouver un emplois dans l’industrie en pleine essor de la tech. Maîtrises HTML, CSS, React Javascript et bien plus",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.ironhack.com/fr/developpement-web/paris",
    url_photo: "https://www.defi-metiers.fr/sites/default/files/doc-kelios/Logo/2017/11/07/IHlogo_new_blue.png",
    price: "8000€",
    remote: false)

devschool2 = DevSchool.new(
    name: "Iron Hack",
    address: "226 Boulevard Voltaire , 75011 Paris",
    duration: "24 semaines", 
    description: "Intègres notre bootcamp immersif en Développement Web et obtiens les compétences pratiques nécessaires pour trouver un emplois dans l’industrie en pleine essor de la tech. Maîtrises HTML, CSS, React Javascript et bien plus",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.ironhack.com/fr/developpement-web/paris",
    url_photo: "https://www.defi-metiers.fr/sites/default/files/doc-kelios/Logo/2017/11/07/IHlogo_new_blue.png",
    price: "8000€",
    remote: true)

devschool3 = DevSchool.new(
    name: "Le Wagon",
    address: "2 Avenue des Saules, 59160 Lille",
    duration: "9 semaines", 
    description: "Notre formation Développeur Web à Lille est une expérience immersive qui vous fait passer de débutant à Développeur Web en 9 semaines. À la fin de la formation, vous saurez construire des applications web fonctionnelles qui répondent aux besoins de vos utilisateurs, vous saurez collaborer avec d'autres Développeurs, Designers et Product Managers avec le bon workflow et les bonnes pratiques web.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "httpas://www.lewagon.com/fr/lille/web-development-course/full-time",
    url_photo: "https://dwj199mwkel52.cloudfront.net/assets/lewagon-logo-square-b6124eb974be375884558e4464efce48a9b5664f18422768156364363ecdd1fc.png",
    price: "6000€",
    remote: false)

devschool4 = DevSchool.new(
    name: "Le Wagon",
    address: "2 Avenue des Saules, 59160 Lille",
    duration: "24 semaines", 
    description: "Notre formation Développeur Web à Lille est une expérience immersive qui vous fait passer de débutant à Développeur Web en 9 semaines. À la fin de la formation, vous saurez construire des applications web fonctionnelles qui répondent aux besoins de vos utilisateurs, vous saurez collaborer avec d'autres Développeurs, Designers et Product Managers avec le bon workflow et les bonnes pratiques web.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lewagon.com/fr/lille/web-development-course/part-time",
    url_photo: "https://dwj199mwkel52.cloudfront.net/assets/lewagon-logo-square-b6124eb974be375884558e4464efce48a9b5664f18422768156364363ecdd1fc.png",
    price: "6000€",
    remote: true)

devschool5 = DevSchool.new(
    name: "Le Wagon",
    address: "107 Cours Balguerie Stuttenberg, 33300 Bordeaux",
    duration: "24 semaines", 
    description: "Apprenez à coder sur notre campus de Bordeaux et rejoignez une communauté de créateurs, entrepreneurs et développeurs qui ont changé de vie avec nous.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lewagon.com/fr/bordeaux/web-development-course/part-time",
    url_photo: "https://dwj199mwkel52.cloudfront.net/assets/lewagon-logo-square-b6124eb974be375884558e4464efce48a9b5664f18422768156364363ecdd1fc.png",
    price: "6000€",
    remote: true)

devschool6 = DevSchool.new(
    name: "Le Wagon",
    address: "107 Cours Balguerie Stuttenberg, 33300 Bordeaux",
    duration: "9 semaines", 
    description: "Apprenez à coder sur notre campus de Bordeaux et rejoignez une communauté de créateurs, entrepreneurs et développeurs qui ont changé de vie avec nous.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lewagon.com/fr/bordeaux/web-development-course/full-time",
    url_photo: "https://dwj199mwkel52.cloudfront.net/assets/lewagon-logo-square-b6124eb974be375884558e4464efce48a9b5664f18422768156364363ecdd1fc.png",
    price: "6000€",
    remote: false)

devschool7 = DevSchool.new(
    name: "Le Wagon",
    address: "20 Rue des Capucins, 69001 Lyon",
    duration: "24 semaines", 
    description: "L'équipe du Wagon Lyon est passionnée par l'éducation. Son but : vous offrir la meilleure expérience pédagogique et vous aider à atteindre vos objectifs pendant et après la formation.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lewagon.com/fr/bordeaux/web-development-course/part-time",
    url_photo: "https://dwj199mwkel52.cloudfront.net/assets/lewagon-logo-square-b6124eb974be375884558e4464efce48a9b5664f18422768156364363ecdd1fc.png",
    price: "6000€",
    remote: true)

devschool8 = DevSchool.new(
    name: "Le Wagon",
    address: "20 Rue des Capucins, 69001 Lyon",
    duration: "9 semaines", 
    description: "L'équipe du Wagon Lyon est passionnée par l'éducation. Son but : vous offrir la meilleure expérience pédagogique et vous aider à atteindre vos objectifs pendant et après la formation.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lewagon.com/fr/bordeaux/web-development-course/full-time",
    url_photo: "https://dwj199mwkel52.cloudfront.net/assets/lewagon-logo-square-b6124eb974be375884558e4464efce48a9b5664f18422768156364363ecdd1fc.png",
    price: "6000€",
    remote: false)

devschool9 = DevSchool.new(
    name: "Le Wagon",
    address: "167 Rue Paradis, 13006 Marseille",
    duration: "24 semaines", 
    description: "Notre formation Développeur Web à Marseille est une expérience immersive qui vous fait passer de débutant à Développeur Web en 9 semaines. À la fin de la formation, vous saurez construire des applications web fonctionnelles qui répondent aux besoins de vos utilisateurs, vous saurez collaborer avec d'autres Développeurs, Designers et Product Managers avec le bon workflow et les bonnes pratiques web.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lewagon.com/fr/marseille/web-development-course/part-time",
    url_photo: "https://dwj199mwkel52.cloudfront.net/assets/lewagon-logo-square-b6124eb974be375884558e4464efce48a9b5664f18422768156364363ecdd1fc.png",
    price: "6000€",
    remote: true)

devschool10 = DevSchool.new(
    name: "Le Wagon",
    address: "167 Rue Paradis, 13006 Marseille",
    duration: "9 semaines", 
    description: "Notre formation Développeur Web à Marseille est une expérience immersive qui vous fait passer de débutant à Développeur Web en 9 semaines. À la fin de la formation, vous saurez construire des applications web fonctionnelles qui répondent aux besoins de vos utilisateurs, vous saurez collaborer avec d'autres Développeurs, Designers et Product Managers avec le bon workflow et les bonnes pratiques web.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lewagon.com/fr/marseille/web-development-course/full-time",
    url_photo: "https://dwj199mwkel52.cloudfront.net/assets/lewagon-logo-square-b6124eb974be375884558e4464efce48a9b5664f18422768156364363ecdd1fc.png",
    price: "6000€",
    remote: false)

devschool11 = DevSchool.new(
    name: "Le Wagon",
    address: "11 Rue La Noue Bras de Fer, 44200 Nantes",
    duration: "24 semaines", 
    description: "Nous n’arrêtons jamais d’apprendre. C’est pourquoi nos professeurs sont les meilleurs ! Nous adaptons constamment notre curriculum à mesure que chaque langage de programmation évolue, afin d’enseigner à nos étudiants les meilleures pratiques du développement web à Nantes .",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lewagon.com/fr/nantes/web-development-course/part-time",
    url_photo: "https://dwj199mwkel52.cloudfront.net/assets/lewagon-logo-square-b6124eb974be375884558e4464efce48a9b5664f18422768156364363ecdd1fc.png",
    price: "6000€",
    remote: true)

devschool12 = DevSchool.new(
    name: "Le Wagon",
    address: "11 Rue La Noue Bras de Fer, 44200 Nantes",
    duration: "9 semaines", 
    description: "Nous n’arrêtons jamais d’apprendre. C’est pourquoi nos professeurs sont les meilleurs ! Nous adaptons constamment notre curriculum à mesure que chaque langage de programmation évolue, afin d’enseigner à nos étudiants les meilleures pratiques du développement web à Nantes .",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lewagon.com/fr/nantes/web-development-course/full-time",
    url_photo: "https://dwj199mwkel52.cloudfront.net/assets/lewagon-logo-square-b6124eb974be375884558e4464efce48a9b5664f18422768156364363ecdd1fc.png",
    price: "6000€",
    remote: false)

devschool13 = DevSchool.new(
    name: "Le Wagon",
    address: "Startway Partners, Cedex 1 FR, 21 Avenue Thiers BP 1239, 06000 Nice",
    duration: "9 semaines", 
    description: "L'équipe du Wagon Nice est passionnée par l'éducation. Son but : vous offrir la meilleure expérience pédagogique et vous aider à atteindre vos objectifs pendant et après la formation.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lewagon.com/fr/nice/web-development-course/full-time",
    url_photo: "https://dwj199mwkel52.cloudfront.net/assets/lewagon-logo-square-b6124eb974be375884558e4464efce48a9b5664f18422768156364363ecdd1fc.png",
    price: "6000€",
    remote: false)

devschool14 = DevSchool.new(
    name: "Le Wagon",
    address: "16 Villa Gaudelet, 75011 Paris",
    duration: "9 semaines", 
    description: "L'équipe du Wagon Paris est passionnée par l'éducation. Son but : vous offrir la meilleure expérience pédagogique et vous aider à atteindre vos objectifs pendant et après la formation.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lewagon.com/fr/paris/web-development-course/full-time",
    url_photo: "https://dwj199mwkel52.cloudfront.net/assets/lewagon-logo-square-b6124eb974be375884558e4464efce48a9b5664f18422768156364363ecdd1fc.png",
    price: "6900€",
    remote: false)

devschool15 = DevSchool.new(
    name: "Le Wagon",
    address: "16 Villa Gaudelet, 75011 Paris",
    duration: "24 semaines", 
    description: "L'équipe du Wagon Paris est passionnée par l'éducation. Son but : vous offrir la meilleure expérience pédagogique et vous aider à atteindre vos objectifs pendant et après la formation.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lewagon.com/fr/paris/web-development-course/part-time",
    url_photo: "https://dwj199mwkel52.cloudfront.net/assets/lewagon-logo-square-b6124eb974be375884558e4464efce48a9b5664f18422768156364363ecdd1fc.png",
    price: "6900€",
    remote: true)

devschool16 = DevSchool.new(
    name: "Le Wagon",
    address: "1 Rue du Général Maurice Guillaudot, 35000 Rennes",
    duration: "9 semaines", 
    description: "Apprenez à coder et à construire une application web au centre de la Bretagne ! Rennes n'est pas seulement une ville riche historiquement, c'est aussi un pivot du numérique à l'Ouest de l'Europe. Avec une des plus fortes croissances de l’emploi du secteur numérique parmi les métropoles françaises, les possibilités de rencontres, de création et d'apprentissage sont énormes.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lewagon.com/fr/rennes/web-development-course/full-time",
    url_photo: "https://dwj199mwkel52.cloudfront.net/assets/lewagon-logo-square-b6124eb974be375884558e4464efce48a9b5664f18422768156364363ecdd1fc.png",
    price: "6000€",
    remote: false)

devschool17 = DevSchool.new(
    name: "Le Wagon",
    address: "1 Rue du Général Maurice Guillaudot, 35000 Rennes",
    duration: "24 semaines", 
    description: "Apprenez à coder et à construire une application web au centre de la Bretagne ! Rennes n'est pas seulement une ville riche historiquement, c'est aussi un pivot du numérique à l'Ouest de l'Europe. Avec une des plus fortes croissances de l’emploi du secteur numérique parmi les métropoles françaises, les possibilités de rencontres, de création et d'apprentissage sont énormes.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lewagon.com/fr/rennes/web-development-course/part-time",
    url_photo: "https://dwj199mwkel52.cloudfront.net/assets/lewagon-logo-square-b6124eb974be375884558e4464efce48a9b5664f18422768156364363ecdd1fc.png",
    price: "6000€",
    remote: true)

devschool18 = DevSchool.new(
    name: "Le Réacteur",
    address: "9 Rue du Château d'Eau, 75010 Paris",
    duration: "10 semaines", 
    description: "Pendant 10 semaines vous apprendrez la programmation au travers 6 modules. Chaque module vous apportera les compétences nécessaires pour aborder le module suivant. La matinée est dédiée à la correction des exercices de la veille ainsi qu'au cours du jour. Le reste de la journée, vous travaillerez sur des exercices pratiques, pour assimiler les nouvelles notions. Les deux dernières semaines de la formation sont dédiées aux projets. Vous réaliserez, pendant cette période, un site Web ou une application Mobile pour une startup ! Corinne, Brice et Alexis vous formeront pendant toute cette période.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lereacteur.io/bootcamp-javascript/formation-developpeur-web-mobile/",
    url_photo: "https://secure.meetupstatic.com/photos/event/8/a/c/0/600_480335520.jpeg",
    price: "7500€",
    remote: false)

devschool19 = DevSchool.new(
    name: "Le Réacteur",
    address: "9 Rue du Château d'Eau, 75010 Paris",
    duration: "25 semaines", 
    description: "Pendant 25 semaines vous apprendrez la programmation au travers 6 modules. Chaque module vous apportera les compétences nécessaires pour aborder le module suivant. La matinée est dédiée à la correction des exercices de la veille ainsi qu'au cours du jour. Le reste de la journée, vous travaillerez sur des exercices pratiques, pour assimiler les nouvelles notions. Les deux dernières semaines de la formation sont dédiées aux projets. Vous réaliserez, pendant cette période, un site Web ou une application Mobile pour une startup ! Corinne, Brice et Alexis vous formeront pendant toute cette période.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lereacteur.io/bootcamp-javascript/formation-developpeur-web-mobile/",
    url_photo: "https://secure.meetupstatic.com/photos/event/8/a/c/0/600_480335520.jpeg",
    price: "6500€",
    remote: false)

devschool20 = DevSchool.new(
    name: "Le Capsule",
    address: "5 Rue de l'Industrie, 98000 Monaco",
    duration: "10 semaines", 
    description: "Apprenez à coder dans notre campus de Monaco et rejoignez notre communauté d'experts de la tech, développeur ou développeuse web, intégrateur web, products owners, chef de projet digital, ou entrepreneurs !",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lacapsule.academy/coding-bootcamp-monaco",
    url_photo: "https://techsnooper.io/wp-content/uploads/2020/09/la-capsule-1-731x600.png",
    price: "7000€",
    remote: false)

devschool21 = DevSchool.new(
    name: "Le Capsule",
    address: "51 Quai Lawton, 33300 Bordeaux",
    duration: "10 semaines", 
    description: "Apprenez à coder dans notre campus de Bordeaux et rejoignez notre communauté d'experts de la tech, développeur ou développeuse web, intégrateur web, products owners, chef de projet digital, ou entrepreneurs !",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lacapsule.academy/coding-bootcamp-bordeaux",
    url_photo: "https://techsnooper.io/wp-content/uploads/2020/09/la-capsule-1-731x600.png",
    price: "6000€",
    remote: false)

devschool22 = DevSchool.new(
    name: "Le Capsule",
    address: "26 Rue de la République, 13001 Marseille",
    duration: "10 semaines", 
    description: "Apprenez à coder dans notre campus de Marseille et rejoignez notre communauté d'experts de la tech, développeur ou développeuse web, intégrateur web, products owners, chef de projet digital, ou entrepreneurs !",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lacapsule.academy/coding-bootcamp-marseille",
    url_photo: "https://techsnooper.io/wp-content/uploads/2020/09/la-capsule-1-731x600.png",
    price: "6000€",
    remote: false)

devschool23 = DevSchool.new(
    name: "Le Capsule",
    address: "92 Cours Lafayette, 69003 Lyon",
    duration: "10 semaines", 
    description: "Apprenez à coder dans notre campus de Lyon et rejoignez notre communauté d'experts de la tech, développeur ou développeuse web, intégrateur web, products owners, chef de projet digital, ou entrepreneurs !",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lacapsule.academy/coding-bootcamp-lyon",
    url_photo: "https://techsnooper.io/wp-content/uploads/2020/09/la-capsule-1-731x600.png",
    price: "6000€",
    remote: false)

devschool24 = DevSchool.new(
    name: "Le Capsule",
    address: "56 Boulevard Pereire, 75017 Paris",
    duration: "10 semaines", 
    description: "Apprenez à coder dans notre campus de Paris et rejoignez notre communauté d'experts de la tech, développeur ou développeuse web, intégrateur web, products owners, chef de projet digital, ou entrepreneurs !",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://www.lacapsule.academy/coding-bootcamp-paris",
    url_photo: "https://techsnooper.io/wp-content/uploads/2020/09/la-capsule-1-731x600.png",
    price: "7000€",
    remote: false)

devschool25 =DevSchool.new(
    name: "Oclock",
    address: "10 rue de Penthievre, 75008 Paris",
    duration: "6 mois", 
    description: "O’clock est une école de développement web en téléprésentiel. Chaque matin, du lundi au vendredi, les étudiants se connectent via leur ordinateur personnel à nos salles de classe virtuelles pour assister au cours animé en direct-vidéo par nos formateurs. Échanges en temps réel, suivi individualisé et continu, challenges de l’après-midi pour s’entraîner, évaluations, projets. Le tout, accessible à distance et en chaussons.",  
    payment_facilities: true,
    certifying: true,
    category: "Full stack",
    url: "https://oclock.io/formations/developpeur-web",
    url_photo: "https://21douze.fr/wp-content/uploads/2018/10/Logo-noir-vert-800x400.png",
    price: "6500€",
    remote: false)

devschool26 = DevSchool.new(
    name: "Wild Code School",
    address: "La Loupe, 28240 La Loupe",
    duration: "5 mois", 
    description: "Formation développeur front-end à temps partiel : formez-vous tout en continuant à travailler ! Apprenez à coder en JavaScript / React pour devenir Développeur front-end en 5 mois avec notre formation à distance (en téléprésentiel).",  
    payment_facilities: true,
    certifying: true,
    category: "Front-end",
    url: "https://www.wildcodeschool.com/fr-FR/formations/formation-developpeur-front-end/remote-francais",
    url_photo: "https://www.wildcodeschool.com/static/imgs/logo.png",
    price: "4050€",
    remote: true)

devschool27 = DevSchool.new(
    name: "OpenClassRooms",
    address: "La Loupe, 28240 La Loupe",
    duration: "12 mois", 
    description: "Devenez qui vous voulez être avec OpenClassrooms. Choisissez votre carrière. Suivez une formation constituée de projets professionnalisants et de séances individuelles avec un mentor dédié chaque semaine. Obtenez un diplôme reconnu par l'État. Enrichissez votre CV avec les programmes en alternance proposés par OpenClassrooms et gagnez un salaire tout en suivant votre formation.",  
    payment_facilities: true,
    certifying: true,
    category: "Front-end",
    url: "https://openclassrooms.com/fr/paths/314-developpeur-front-end#path_start",
    url_photo: "https://upload.wikimedia.org/wikipedia/fr/archive/0/0d/20150911160225%21Logo_OpenClassrooms.png",
    price: "300€ / mois",
    remote: true)

    puts "Creating DevSchools...."

    # devschool1.photo.attach(io:photo_ironhack, filename: "photo1", content_type: "image/jpg")
    # devschool2.photo.attach(io:photo_ironhack, filename: "photo1", content_type: "image/jpg")
    # devschool4.photo.attach(io:photo_wagon, filename: "photo2", content_type: "image/png")
    # devschool3.photo.attach(io:photo_wagon, filename: "photo2", content_type: "image/png")
    # devschool5.photo.attach(io:photo_wagon, filename: "photo2", content_type: "image/png")
    # devschool6.photo.attach(io:photo_wagon, filename: "photo2", content_type: "image/png")
    # devschool7.photo.attach(io:photo_wagon, filename: "photo2", content_type: "image/png")
    # devschool8.photo.attach(io:photo_wagon, filename: "photo2", content_type: "image/png")
    # devschool9.photo.attach(io:photo_wagon, filename: "photo2", content_type: "image/png")
    # devschool10.photo.attach(io:photo_wagon, filename: "photo2", content_type: "image/png")
    # devschool11.photo.attach(io:photo_wagon, filename: "photo2", content_type: "image/png")
    # devschool12.photo.attach(io:photo_wagon, filename: "photo2", content_type: "image/png")
    # devschool13.photo.attach(io:photo_wagon, filename: "photo2", content_type: "image/png")
    # devschool14.photo.attach(io:photo_wagon, filename: "photo2", content_type: "image/png")
    # devschool15.photo.attach(io:photo_wagon, filename: "photo2", content_type: "image/png")
    # devschool16.photo.attach(io:photo_wagon, filename: "photo2", content_type: "image/png")
    # devschool17.photo.attach(io:photo_wagon, filename: "photo2", content_type: "image/png")
    # devschool18.photo.attach(io:photo_reacteur, filename: "photo3", content_type: "image/jpg")
    # devschool19.photo.attach(io:photo_reacteur, filename: "photo3", content_type: "image/jpg")
    # devschool20.photo.attach(io:photo_capsule, filename: "photo4", content_type: "image/png")
    # devschool21.photo.attach(io:photo_capsule, filename: "photo4", content_type: "image/png")
    # devschool22.photo.attach(io:photo_capsule, filename: "photo4", content_type: "image/png")
    # devschool23.photo.attach(io:photo_capsule, filename: "photo4", content_type: "image/png")
    # devschool24.photo.attach(io:photo_capsule, filename: "photo4", content_type: "image/png")
    # devschool25.photo.attach(io:photo_oclock, filename: "photo5", content_type: "image/png")
    # devschool26.photo.attach(io:photo_wcs, filename: "photo6", content_type: "image/jpg")
    # devschool27.photo.attach(io:photo_ocr, filename: "photo7", content_type: "image/png")


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

game1 = Game.create!(title: "Votre première bannière", short_description: "Reproduis une page en code Html",category:"html",order: 1, difficulty: 1)
game2 = Game.create!(title: "Flexbox froggy", short_description: "Aidez Froggy la grenouille à atteindre le nénuphar en écrivant du code CSS!", category:"css",order: 2,  difficulty: 2)
game3 = Game.create!(title: "Miniature Golf Game", short_description: "Une petite partie de mini golf!", category:"css", order: 3,  difficulty: 2)
game4 = Game.create!(title: "Votre deuxième bannière", short_description: "Reproduis une bannière en utilisant que des tags HTML", category:"html", order: 4,  difficulty: 3)
game5 = Game.create!(title: "Le DOM et Javascript", short_description: "Changer le DOM en utilisant du Javascript", category:"js", order: 5,  difficulty: 3)
puts "Games created"

user1 = User.create!(email:"youssef@email.com",password:"azerty",profile_type:"front-end")
user2 = User.create!(email:"test@email.com", password:"azerty", profile_type:"fullstack")
puts "User created"

# users = User.all
# games = Game.all
# users.each do |user|
#     games.each do |game|
#         UserGame.create!(user: user, game: game, unlocked: game.order == 1)
#     end
# end
