class CreateMonitorsses < ActiveRecord::Migration[6.1]
  def change
    create_table :monitorsses do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.decimal :diagonal
      t.references :category, null: false, foreign_key: true
      t.string :resolution
      t.references :color, null: false, foreign_key: true
      t.references :brand, null: false, foreign_key: true
      t.string :produced
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
