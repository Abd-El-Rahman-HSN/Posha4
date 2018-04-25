class CreateIndividuals < ActiveRecord::Migration[5.2]
  def change
    create_table :individuals do |t|
      t.string :hyper
      t.string :photo
      t.string :linkd
      t.references :player, foreign_key: true

      t.timestamps
    end
  end
end
