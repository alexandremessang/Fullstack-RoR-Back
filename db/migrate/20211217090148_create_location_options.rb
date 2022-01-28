class CreateLocationOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :location_options do |t|
      t.integer :state
      t.timestamps
      t.references :option, null:true, foreign_key: true
    end
  end
end
