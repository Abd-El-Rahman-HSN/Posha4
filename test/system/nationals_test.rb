require "application_system_test_case"

class NationalsTest < ApplicationSystemTestCase
  setup do
    @national = nationals(:one)
  end

  test "visiting the index" do
    visit nationals_url
    assert_selector "h1", text: "Nationals"
  end

  test "creating a National" do
    visit nationals_url
    click_on "New National"

    fill_in "Competition", with: @national.competition
    fill_in "Countts", with: @national.countts
    fill_in "Player", with: @national.player_id
    fill_in "Position", with: @national.position
    fill_in "Years", with: @national.years
    click_on "Create National"

    assert_text "National was successfully created"
    click_on "Back"
  end

  test "updating a National" do
    visit nationals_url
    click_on "Edit", match: :first

    fill_in "Competition", with: @national.competition
    fill_in "Countts", with: @national.countts
    fill_in "Player", with: @national.player_id
    fill_in "Position", with: @national.position
    fill_in "Years", with: @national.years
    click_on "Update National"

    assert_text "National was successfully updated"
    click_on "Back"
  end

  test "destroying a National" do
    visit nationals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "National was successfully destroyed"
  end
end
