class CreateProcessors < ActiveRecord::Migration[6.1]
  def change
    create_table :processors do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.string :category
      t.string :country
      t.string :produced
      t.string :brand
      t.string :crystalcodename
      t.string :socket
      t.string :model

      t.timestamps
    end
  end
end
