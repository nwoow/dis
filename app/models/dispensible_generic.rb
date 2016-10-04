class DispensibleGeneric < ActiveRecord::Base
    validates :generic_id, :route_id, :doseform_id, :generic_strength, :doseunit_id, :dispensible_qty, :doseunit_id, :dispensible_generic_text, :data_source_id, presence: true
end
