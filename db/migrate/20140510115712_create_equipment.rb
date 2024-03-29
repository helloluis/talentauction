class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.text :description
      t.hstore :listed_specs
      t.hstore :actual_specs
      t.string :itemcode
      t.date :installed_at
      t.date :replaced_at
      t.date :failure_mode

      t.timestamps
    end
    add_index :equipment, :itemcode
  end
end
