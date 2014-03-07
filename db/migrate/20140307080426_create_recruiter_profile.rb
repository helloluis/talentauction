class CreateRecruiterProfile < ActiveRecord::Migration
  def change
    create_table :recruiter_profiles do |t|
      t.references :recruiter
      t.string :company_name
      t.string :company_size
      t.string :industry
      t.string :country
      t.string :city
      t.text :summary
      t.text :additional_info
    end
    add_index :recruiter_profiles, :recruiter_id
  end
end
