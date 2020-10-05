class CreateMushrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :mushrooms do |t|
      t.string :latin_name
      t.text :common_name, array: true, default: []
      t.text :confused_with, array: true, default: []
      t.text :region, array: true, default: []
      t.string :habitat
      t.boolean :poisonous
      t.string :img_url

      t.timestamps
    end
  end
end
