class Professional < User
  has_one :profile, class_name: 'ProfessionalProfile', autosave: true, foreign_key: :user_id
  before_create :build_profile

  accepts_nested_attributes_for :profile
end
