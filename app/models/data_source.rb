class DataSource < ActiveRecord::Base
    validates :data_source_name, presence: true
end
