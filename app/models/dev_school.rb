class DevSchool < ApplicationRecord
    has_many :user_dev_schools
    has_many :users, through: :user_dev_schools
    geocoded_by :address
    after_validation :geocode, if: :will_save_change_to_address?

end
