class CreateMonoblocks < ActiveRecord::Migration[6.1]
  def change
    create_table :monoblocks do |t|
      t.string :name
      t.string :description
      t.references :brand, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true
      t.references :color, null: false, foreign_key: true
      t.references :os, null: false, foreign_key: true
      t.decimal :price
      t.decimal :diagonal
      t.string :produced
      t.string :resolution

      t.timestamps
    end
  end
end
