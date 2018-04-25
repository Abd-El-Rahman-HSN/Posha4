require "application_system_test_case"

class ContinentalsTest < ApplicationSystemTestCase
  setup do
    @continental = continentals(:one)
  end

  test "visiting the index" do
    visit continentals_url
    assert_selector "h1", text: "Continentals"
  end

  test "creating a Continental" do
    visit continentals_url
    click_on "New Continental"

    fill_in "Competition", with: @continental.competition
    fill_in "Countts", with: @continental.countts
    fill_in "Player", with: @continental.player_id
    fill_in "Position", with: @continental.position
    fill_in "Years", with: @continental.years
    click_on "Create Continental"

    assert_text "Continental was successfully created"
    click_on "Back"
  end

  test "updating a Continental" do
    visit continentals_url
    click_on "Edit", match: :first

    fill_in "Competition", with: @continental.competition
    fill_in "Countts", with: @continental.countts
    fill_in "Player", with: @continental.player_id
    fill_in "Position", with: @continental.position
    fill_in "Years", with: @continental.years
    click_on "Update Continental"

    assert_text "Continental was successfully updated"
    click_on "Back"
  end

  test "destroying a Continental" do
    visit continentals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Continental was successfully destroyed"
  end
end
