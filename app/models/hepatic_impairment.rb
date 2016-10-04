class HepaticImpairment < ActiveRecord::Base
  validates :generic_id, :hepatic_imp_instructions, :hepatic_imp_text, :data_source_id,  presence: true

end
