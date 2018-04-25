require "application_system_test_case"

class IndividualsTest < ApplicationSystemTestCase
  setup do
    @individual = individuals(:one)
  end

  test "visiting the index" do
    visit individuals_url
    assert_selector "h1", text: "Individuals"
  end

  test "creating a Individual" do
    visit individuals_url
    click_on "New Individual"

    fill_in "Hyper", with: @individual.hyper
    fill_in "Linkd", with: @individual.linkd
    fill_in "Photo", with: @individual.photo
    fill_in "Player", with: @individual.player_id
    click_on "Create Individual"

    assert_text "Individual was successfully created"
    click_on "Back"
  end

  test "updating a Individual" do
    visit individuals_url
    click_on "Edit", match: :first

    fill_in "Hyper", with: @individual.hyper
    fill_in "Linkd", with: @individual.linkd
    fill_in "Photo", with: @individual.photo
    fill_in "Player", with: @individual.player_id
    click_on "Update Individual"

    assert_text "Individual was successfully updated"
    click_on "Back"
  end

  test "destroying a Individual" do
    visit individuals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Individual was successfully destroyed"
  end
end
