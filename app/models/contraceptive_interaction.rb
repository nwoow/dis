class ContraceptiveInteraction < ActiveRecord::Base
  validates :generic_id, :contraceptive_interaction_text, :data_source_id, presence: true
end
