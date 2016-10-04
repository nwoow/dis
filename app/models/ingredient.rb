class Ingredient < ActiveRecord::Base
  validates :ingredient_name, :data_source_id, presence: true

end
