class Recruiter < User
  has_one :profile, class_name: 'RecruiterProfile', autosave: true
  before_create :build_profile

  accepts_nested_attributes_for :profile
end

# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  confirmation_token     :string(255)
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  type                   :string(255)
#  provider               :string(255)
#  uid                    :string(255)
#

