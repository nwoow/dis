class AlcoholInteraction < ActiveRecord::Base
  	validates :generic_id, :alcohol_interaction_type_id,:data_source_id, presence: true
end
