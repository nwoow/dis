class GenericType < ActiveRecord::Base
	 validates 	:generic_type_name, :data_source_id, presence: true 
end
