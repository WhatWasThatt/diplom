class CreateVideocards < ActiveRecord::Migration[6.1]
  def change
    create_table :videocards do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.string :produced
      t.references :brand, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true
      t.string :processor
      t.string :type
      t.string :memory

      t.timestamps
    end
  end
end
