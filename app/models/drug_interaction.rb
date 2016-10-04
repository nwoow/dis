class DrugInteraction < ActiveRecord::Base
  validates :first_generic_id, :second_generic_id, :drug_interaction_text, :data_source_id, presence: true


end
