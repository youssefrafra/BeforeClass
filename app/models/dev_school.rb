class DevSchool < ApplicationRecord
    has_many :user_dev_schools
    has_many :users, through: :user_dev_schools
end
