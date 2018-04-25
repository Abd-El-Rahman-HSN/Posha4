class CreateContinentals < ActiveRecord::Migration[5.2]
  def change
    create_table :continentals do |t|
      t.string :competition
      t.integer :countts
      t.date :years
      t.string :position
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
