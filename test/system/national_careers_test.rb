require "application_system_test_case"

class NationalCareersTest < ApplicationSystemTestCase
  setup do
    @national_career = national_careers(:one)
  end

  test "visiting the index" do
    visit national_careers_url
    assert_selector "h1", text: "National Careers"
  end

  test "creating a National career" do
    visit national_careers_url
    click_on "New National Career"

    fill_in "Assists", with: @national_career.assists
    fill_in "Goals", with: @national_career.goals
    fill_in "Matches", with: @national_career.matches
    fill_in "Player", with: @national_career.player_id
    fill_in "Red", with: @national_career.red
    fill_in "Team", with: @national_career.team
    fill_in "Yellow", with: @national_career.yellow
    click_on "Create National career"

    assert_text "National career was successfully created"
    click_on "Back"
  end

  test "updating a National career" do
    visit national_careers_url
    click_on "Edit", match: :first

    fill_in "Assists", with: @national_career.assists
    fill_in "Goals", with: @national_career.goals
    fill_in "Matches", with: @national_career.matches
    fill_in "Player", with: @national_career.player_id
    fill_in "Red", with: @national_career.red
    fill_in "Team", with: @national_career.team
    fill_in "Yellow", with: @national_career.yellow
    click_on "Update National career"

    assert_text "National career was successfully updated"
    click_on "Back"
  end

  test "destroying a National career" do
    visit national_careers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "National career was successfully destroyed"
  end
end
