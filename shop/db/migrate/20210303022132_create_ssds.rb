class CreateSsds < ActiveRecord::Migration[6.1]
  def change
    create_table :ssds do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.string :produced
      t.references :brand, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true
      t.string :volume
      t.string :type
      t.string :factor
      t.string :interface
      t.string :controller

      t.timestamps
    end
  end
end
