require 'test_helper'

class ContinentalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @continental = continentals(:one)
  end

  test "should get index" do
    get continentals_url
    assert_response :success
  end

  test "should get new" do
    get new_continental_url
    assert_response :success
  end

  test "should create continental" do
    assert_difference('Continental.count') do
      post continentals_url, params: { continental: { competition: @continental.competition, countts: @continental.countts, player_id: @continental.player_id, position: @continental.position, years: @continental.years } }
    end

    assert_redirected_to continental_url(Continental.last)
  end

  test "should show continental" do
    get continental_url(@continental)
    assert_response :success
  end

  test "should get edit" do
    get edit_continental_url(@continental)
    assert_response :success
  end

  test "should update continental" do
    patch continental_url(@continental), params: { continental: { competition: @continental.competition, countts: @continental.countts, player_id: @continental.player_id, position: @continental.position, years: @continental.years } }
    assert_redirected_to continental_url(@continental)
  end

  test "should destroy continental" do
    assert_difference('Continental.count', -1) do
      delete continental_url(@continental)
    end

    assert_redirected_to continentals_url
  end
end
