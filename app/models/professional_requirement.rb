class ProfessionalRequirement < ActiveRecord::Base
  belongs_to :professional, inverse_of: :professional_requirement
end
