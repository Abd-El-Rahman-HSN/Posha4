require "application_system_test_case"

class PerformancesTest < ApplicationSystemTestCase
  setup do
    @performance = performances(:one)
  end

  test "visiting the index" do
    visit performances_url
    assert_selector "h1", text: "Performances"
  end

  test "creating a Performance" do
    visit performances_url
    click_on "New Performance"

    fill_in "Assists", with: @performance.assists
    fill_in "Club", with: @performance.club
    fill_in "Competition", with: @performance.competition
    fill_in "Country", with: @performance.country
    fill_in "Goals", with: @performance.goals
    fill_in "Matches", with: @performance.matches
    fill_in "Player", with: @performance.player_id
    fill_in "Red", with: @performance.red
    fill_in "Season", with: @performance.season
    fill_in "Tier", with: @performance.tier
    fill_in "Yellow", with: @performance.yellow
    click_on "Create Performance"

    assert_text "Performance was successfully created"
    click_on "Back"
  end

  test "updating a Performance" do
    visit performances_url
    click_on "Edit", match: :first

    fill_in "Assists", with: @performance.assists
    fill_in "Club", with: @performance.club
    fill_in "Competition", with: @performance.competition
    fill_in "Country", with: @performance.country
    fill_in "Goals", with: @performance.goals
    fill_in "Matches", with: @performance.matches
    fill_in "Player", with: @performance.player_id
    fill_in "Red", with: @performance.red
    fill_in "Season", with: @performance.season
    fill_in "Tier", with: @performance.tier
    fill_in "Yellow", with: @performance.yellow
    click_on "Update Performance"

    assert_text "Performance was successfully updated"
    click_on "Back"
  end

  test "destroying a Performance" do
    visit performances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Performance was successfully destroyed"
  end
end
