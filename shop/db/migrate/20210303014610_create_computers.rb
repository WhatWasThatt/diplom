class CreateComputers < ActiveRecord::Migration[6.1]
  def change
    create_table :computers do |t|
      t.string :name
      t.string :description
      t.references :brand, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true
      t.references :color, null: false, foreign_key: true
      t.references :os, null: false, foreign_key: true
      t.decimal :price
      t.string :produced
      t.decimal :width
      t.decimal :height

      t.timestamps
    end
  end
end
