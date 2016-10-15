class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :subtitle
      t.string :category_id
      t.integer :initial_quantity
      t.integer :available_quantity
      t.integer :sold_quantity
      t.text :description
      t.integer :price
      t.string :condition

      t.timestamps null: false
    end
  end
end
