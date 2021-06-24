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