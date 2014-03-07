class RecruiterProfile < ActiveRecord::Base
  belongs_to :recruiter, inverse_of: :recruiter_profile
end

# == Schema Information
#
# Table name: recruiter_profiles
#
#  id              :integer          not null, primary key
#  recruiter_id    :integer
#  company_name    :string(255)
#  company_size    :string(255)
#  industry        :string(255)
#  country         :string(255)
#  city            :string(255)
#  summary         :text
#  additional_info :text
#

