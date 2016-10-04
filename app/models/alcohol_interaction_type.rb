class AlcoholInteractionType < ActiveRecord::Base
  validates :alcohol_interaction_type_name, :alcohol_interaction_type_text,:data_source_id, presence: true

end
