class CreateEquipements < ActiveRecord::Migration[6.1]
  def change
    create_table :equipements do |t|
      t.string :name
      t.references :equipement_categorie, null: true, foreign_key: true  
      t.timestamps
    end
  end
end
