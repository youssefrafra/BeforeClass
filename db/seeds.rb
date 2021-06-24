# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Game.destroy_all
puts "DB cleaned"
user1 = User.create!(email:"youssef@email.com",password:"azerty",profile_type:"front-end")
puts "User created"
game1 = Game.create!(title: "Votre première bannière", order: 1, difficulty: 1)
game2 = Game.create!(title: "Flexbox froggy", order: 2,  difficulty: 2)
game3 = Game.create!(title: "Miniature Golf Game", order: 3,  difficulty: 3)
puts "Games created"
users = User.all
games = Game.all
users.each do |user|
    games.each do |game|
        UserGame.create!(user: user, game: game, unlocked: game.order == 1)
    end
end
