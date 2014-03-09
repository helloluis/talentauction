class AddMissingTimestamps < ActiveRecord::Migration
  def change
    add_column(:recruiter_profiles, :created_at, :datetime)
    add_column(:recruiter_profiles, :updated_at, :datetime)
    add_column(:professional_profiles, :created_at, :datetime)
    add_column(:professional_profiles, :updated_at, :datetime)
  end
end
