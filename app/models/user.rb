class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_games, dependent: :destroy
  has_many :games, through: :user_games
  has_many :user_dev_schools
  has_many :dev_schools, through: :user_dev_schools
  has_many :answers
  has_many :questions, through: :answers, dependent: :destroy
end
