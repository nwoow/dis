class AdditiveFrequency < ActiveRecord::Base
	validates :display_text, :data_source_id,:description,presence: true  
end
