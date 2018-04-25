require 'test_helper'

class DomesticsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @domestic = domestics(:one)
  end

  test "should get index" do
    get domestics_url
    assert_response :success
  end

  test "should get new" do
    get new_domestic_url
    assert_response :success
  end

  test "should create domestic" do
    assert_difference('Domestic.count') do
      post domestics_url, params: { domestic: { competition: @domestic.competition, countts: @domestic.countts, player_id: @domestic.player_id, position: @domestic.position, years: @domestic.years } }
    end

    assert_redirected_to domestic_url(Domestic.last)
  end

  test "should show domestic" do
    get domestic_url(@domestic)
    assert_response :success
  end

  test "should get edit" do
    get edit_domestic_url(@domestic)
    assert_response :success
  end

  test "should update domestic" do
    patch domestic_url(@domestic), params: { domestic: { competition: @domestic.competition, countts: @domestic.countts, player_id: @domestic.player_id, position: @domestic.position, years: @domestic.years } }
    assert_redirected_to domestic_url(@domestic)
  end

  test "should destroy domestic" do
    assert_difference('Domestic.count', -1) do
      delete domestic_url(@domestic)
    end

    assert_redirected_to domestics_url
  end
end
