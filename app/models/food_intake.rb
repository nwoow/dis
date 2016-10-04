class FoodIntake < ActiveRecord::Base
  validates :food_intake_name,  presence: true

end
