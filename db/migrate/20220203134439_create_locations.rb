class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :title, :null => false
      t.integer :nbChambres
      t.integer :nbCouchages
      t.text :description
      t.string :complementAdresse
      t.string :street
      t.string :zip
      t.string :city
      t.decimal :price, precision: 10, scale: 2
      t.string :photos
      t.text :presentation
      t.float :lattitude
      t.float :longitude
      t.timestamps
    end
  end
end