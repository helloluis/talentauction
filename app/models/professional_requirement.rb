class ProfessionalRequirement < ActiveRecord::Base
  belongs_to :professional, inverse_of: :requirement
end

# == Schema Information
#
# Table name: professional_requirements
#
#  id                    :integer          not null, primary key
#  professional_id       :integer
#  minimum_annual_salary :float
#  salary_currency       :string(255)
#  summary               :text
#  ideal_job_summary     :text
#  additional_info       :text
#  created_at            :datetime
#  updated_at            :datetime
#

