class CreateTransfers < ActiveRecord::Migration[5.2]
  def change
    create_table :transfers do |t|
      t.string :season
      t.date :data
      t.string :from
      t.date :to
      t.integer :transfer_fee
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
