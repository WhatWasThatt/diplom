class CreateMotherboards < ActiveRecord::Migration[6.1]
  def change
    create_table :motherboards do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.string :produced
      t.references :brand, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true
      t.string :factor
      t.string :soket
      t.string :chipset
      t.string :type

      t.timestamps
    end
  end
end
