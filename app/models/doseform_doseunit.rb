class DoseformDoseunit < ActiveRecord::Base
    validates :doseform_id, :doseunit_id, presence: true
end
