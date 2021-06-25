# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Game.destroy_all
Question.destroy_all

question1 = Question.new(order: 1, content: "Dirais-tu que tu es créatif ?", category: "Front-end")
question2 = Question.new(order: 2, content: "Aimes-tu quand tout est bien ordonné ?", category: "Front-end")
question3 = Question.new(order: 3, content: "Tu n'aimes pas passer du temps à trouver une solution ?", category: "Front-end")
question4 = Question.new(order: 4, content: "C'est plus important qu'un produit soit joli plutôt que fonctionnel ?", category: "Front-end")
question5 = Question.new(order: 5, content: "Aimes-tu travailler seul ?", category: "Front-end")
question6 = Question.new(order: 6, content: "Aimes tu travailler dans l'ombre ?", category: "Front-end")

question1.save
question2.save
question3.save
question4.save
question5.save
question6.save

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
