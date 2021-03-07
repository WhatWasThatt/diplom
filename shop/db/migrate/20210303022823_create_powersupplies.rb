class CreatePowersupplies < ActiveRecord::Migration[6.1]
  def change
    create_table :powersupplies do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.string :produced
      t.references :brand, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true
      t.integer :power
      t.string :pfc
      t.integer :efficiency
      t.timestamps
    end
  end
end
