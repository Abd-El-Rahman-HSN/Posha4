class CreateNationalCareers < ActiveRecord::Migration[5.2]
  def change
    create_table :national_careers do |t|
      t.string :team
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
