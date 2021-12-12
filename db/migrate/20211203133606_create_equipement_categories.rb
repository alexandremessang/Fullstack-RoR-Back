class CreateEquipementCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :equipement_categories do |t|
      t.string :name
      t.timestamps
    end
  end
end
