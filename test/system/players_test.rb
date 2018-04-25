require "application_system_test_case"

class PlayersTest < ApplicationSystemTestCase
  setup do
    @player = players(:one)
  end

  test "visiting the index" do
    visit players_url
    assert_selector "h1", text: "Players"
  end

  test "creating a Player" do
    visit players_url
    click_on "New Player"

    fill_in "Agent", with: @player.agent
    fill_in "Born", with: @player.born
    fill_in "Competition", with: @player.competition
    fill_in "Contract Status", with: @player.contract_status
    fill_in "Country", with: @player.country
    fill_in "Current Club", with: @player.current_club
    fill_in "Ending Contract", with: @player.ending_contract
    fill_in "Foot", with: @player.foot
    fill_in "Height", with: @player.height
    fill_in "International", with: @player.international
    fill_in "Main Position", with: @player.main_position
    fill_in "Name", with: @player.name
    fill_in "Nationality", with: @player.nationality
    fill_in "Other Positions", with: @player.other_positions
    fill_in "Photo", with: @player.photo
    fill_in "Second Nationality", with: @player.second_nationality
    fill_in "Social Face", with: @player.social_face
    fill_in "Social Insta", with: @player.social_insta
    fill_in "Social Twit", with: @player.social_twit
    fill_in "Tier", with: @player.tier
    fill_in "Youtube Links", with: @player.youtube_links
    click_on "Create Player"

    assert_text "Player was successfully created"
    click_on "Back"
  end

  test "updating a Player" do
    visit players_url
    click_on "Edit", match: :first

    fill_in "Agent", with: @player.agent
    fill_in "Born", with: @player.born
    fill_in "Competition", with: @player.competition
    fill_in "Contract Status", with: @player.contract_status
    fill_in "Country", with: @player.country
    fill_in "Current Club", with: @player.current_club
    fill_in "Ending Contract", with: @player.ending_contract
    fill_in "Foot", with: @player.foot
    fill_in "Height", with: @player.height
    fill_in "International", with: @player.international
    fill_in "Main Position", with: @player.main_position
    fill_in "Name", with: @player.name
    fill_in "Nationality", with: @player.nationality
    fill_in "Other Positions", with: @player.other_positions
    fill_in "Photo", with: @player.photo
    fill_in "Second Nationality", with: @player.second_nationality
    fill_in "Social Face", with: @player.social_face
    fill_in "Social Insta", with: @player.social_insta
    fill_in "Social Twit", with: @player.social_twit
    fill_in "Tier", with: @player.tier
    fill_in "Youtube Links", with: @player.youtube_links
    click_on "Update Player"

    assert_text "Player was successfully updated"
    click_on "Back"
  end

  test "destroying a Player" do
    visit players_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Player was successfully destroyed"
  end
end
