json.extract! player, :id, :name, :photo, :main_position, :other_positions, :nationality, :second_nationality, :born, :height, :foot, :current_club, :country, :competition, :tier, :contract_status, :ending_contract, :agent, :social_face, :social_twit, :social_insta, :international, :youtube_links, :created_at, :updated_at
json.url player_url(player, format: :json)
