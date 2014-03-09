class CreateProfessionalRequirements < ActiveRecord::Migration
  def change
    create_table :professional_requirements do |t|
      t.float :minimum_annual_salary
      t.string :salary_currency
      t.text :summary
      t.text :ideal_job_summary
      t.text :additional_info
      t.timestamps
    end
  end
end
