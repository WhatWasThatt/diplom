class CreateNotebooks < ActiveRecord::Migration[6.1]
  def change
    create_table :notebooks do |t|
      t.string :name
      t.string :description
      t.decimal :diagonal
      t.references :brand, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true
      t.references :color, null: false, foreign_key: true
      t.decimal :price
      t.string :produced
      t.references :os, null: false, foreign_key: true
      t.string :resolution

      t.timestamps
    end
  end
end
