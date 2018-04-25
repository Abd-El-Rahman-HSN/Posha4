require 'test_helper'

class NationalCareersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @national_career = national_careers(:one)
  end

  test "should get index" do
    get national_careers_url
    assert_response :success
  end

  test "should get new" do
    get new_national_career_url
    assert_response :success
  end

  test "should create national_career" do
    assert_difference('NationalCareer.count') do
      post national_careers_url, params: { national_career: { assists: @national_career.assists, goals: @national_career.goals, matches: @national_career.matches, player_id: @national_career.player_id, red: @national_career.red, team: @national_career.team, yellow: @national_career.yellow } }
    end

    assert_redirected_to national_career_url(NationalCareer.last)
  end

  test "should show national_career" do
    get national_career_url(@national_career)
    assert_response :success
  end

  test "should get edit" do
    get edit_national_career_url(@national_career)
    assert_response :success
  end

  test "should update national_career" do
    patch national_career_url(@national_career), params: { national_career: { assists: @national_career.assists, goals: @national_career.goals, matches: @national_career.matches, player_id: @national_career.player_id, red: @national_career.red, team: @national_career.team, yellow: @national_career.yellow } }
    assert_redirected_to national_career_url(@national_career)
  end

  test "should destroy national_career" do
    assert_difference('NationalCareer.count', -1) do
      delete national_career_url(@national_career)
    end

    assert_redirected_to national_careers_url
  end
end
