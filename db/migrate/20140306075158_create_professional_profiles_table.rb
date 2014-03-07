class CreateProfessionalProfilesTable < ActiveRecord::Migration
  def change
    create_table :professional_profiles do |t|
      t.integer :user_id
      t.string :firstname
      t.string :surname
      t.references :professional
    end

    add_index :professional_profiles, :professional_id
  end
end
