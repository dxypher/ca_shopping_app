class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :brand_id
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
