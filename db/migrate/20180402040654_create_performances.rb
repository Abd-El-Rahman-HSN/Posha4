class CreatePerformances < ActiveRecord::Migration[5.2]
  def change
    create_table :performances do |t|
      t.integer :season
      t.string :club
      t.string :country
      t.string :competition
      t.string :tier
      t.integer :matches
      t.integer :goals
      t.integer :assists
      t.integer :yellow
      t.integer :red
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
