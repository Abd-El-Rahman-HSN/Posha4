class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :number
      t.string :gender
      t.string :photo
      t.integer :main_position
      t.integer :other_positions
      t.string :nationality
      t.string :second_nationality
      t.date :born
      t.float :height
      t.string :foot
      t.string :current_club
      t.string :country
      t.string :competition
      t.string :tier
      t.date :contract_status
      t.date :ending_contract
      t.string :agent
      t.string :social_face
      t.string :social_twit
      t.string :social_insta
      t.string :international
      t.string :youtube_links

      t.timestamps
    end
  end
end
