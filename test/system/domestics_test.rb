require "application_system_test_case"

class DomesticsTest < ApplicationSystemTestCase
  setup do
    @domestic = domestics(:one)
  end

  test "visiting the index" do
    visit domestics_url
    assert_selector "h1", text: "Domestics"
  end

  test "creating a Domestic" do
    visit domestics_url
    click_on "New Domestic"

    fill_in "Competition", with: @domestic.competition
    fill_in "Countts", with: @domestic.countts
    fill_in "Player", with: @domestic.player_id
    fill_in "Position", with: @domestic.position
    fill_in "Years", with: @domestic.years
    click_on "Create Domestic"

    assert_text "Domestic was successfully created"
    click_on "Back"
  end

  test "updating a Domestic" do
    visit domestics_url
    click_on "Edit", match: :first

    fill_in "Competition", with: @domestic.competition
    fill_in "Countts", with: @domestic.countts
    fill_in "Player", with: @domestic.player_id
    fill_in "Position", with: @domestic.position
    fill_in "Years", with: @domestic.years
    click_on "Update Domestic"

    assert_text "Domestic was successfully updated"
    click_on "Back"
  end

  test "destroying a Domestic" do
    visit domestics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Domestic was successfully destroyed"
  end
end
