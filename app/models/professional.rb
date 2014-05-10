class Professional < User
  devise :omniauthable, :omniauth_providers => [:github, :linkedin]

  has_one :profile, class_name: 'ProfessionalProfile', autosave: true
  has_one :requirement, class_name: 'ProfessionalRequirement', autosave: true
  before_create :build_or_find_profile, :build_requirement

  accepts_nested_attributes_for :profile, :requirement

  delegate :summary, to: :requirement, prefix: true, allow_nil: true
  delegate :ideal_job_summary, to: :requirement, prefix: true, allow_nil: true

  def self.find_for_linkedin_oauth(auth)
    professional = where(auth.slice(:provider, :uid)).first

    if professional.nil?
      professional = Professional.new
      professional.provider = auth.provider
      professional.uid = auth.uid
      professional.email = auth.info.email
      professional.password = Devise.friendly_token[0,20]

      # NOTE : entire github name becomes first name. How do we handle this?
      professional.build_profile
      professional.profile.firstname = auth.info.name
      # professional.image = auth.info.image # assuming the professional model has an image

      professional.save
    end
    professional
  end

  def self.find_for_github_oauth(auth)
    professional = where(auth.slice(:provider, :uid)).first

    if professional.nil?
      professional = Professional.new
      professional.provider = auth.provider
      professional.uid = auth.uid
      professional.email = auth.info.email
      professional.password = Devise.friendly_token[0,20]

      # NOTE : entire github name becomes first name. How do we handle this?
      professional.build_profile
      professional.profile.firstname = auth.info.name
      # professional.image = auth.info.image # assuming the professional model has an image

      professional.save
    end

    professional
  end

  private

  def build_or_find_profile
    build_profile if profile.nil?
  end

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

