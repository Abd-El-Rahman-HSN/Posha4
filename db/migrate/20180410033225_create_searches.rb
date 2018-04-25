class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :position
      t.string :main_position
      t.string :nationality
      t.string :age
      t.string :last_comp
      t.string :with_con_since

      t.timestamps
    end
  end
end
