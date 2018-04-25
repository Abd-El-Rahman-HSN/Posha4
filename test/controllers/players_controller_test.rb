require 'test_helper'

class PlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player = players(:one)
  end

  test "should get index" do
    get players_url
    assert_response :success
  end

  test "should get new" do
    get new_player_url
    assert_response :success
  end

  test "should create player" do
    assert_difference('Player.count') do
      post players_url, params: { player: { agent: @player.agent, born: @player.born, competition: @player.competition, contract_status: @player.contract_status, country: @player.country, current_club: @player.current_club, ending_contract: @player.ending_contract, foot: @player.foot, height: @player.height, international: @player.international, main_position: @player.main_position, name: @player.name, nationality: @player.nationality, other_positions: @player.other_positions, photo: @player.photo, second_nationality: @player.second_nationality, social_face: @player.social_face, social_insta: @player.social_insta, social_twit: @player.social_twit, tier: @player.tier, youtube_links: @player.youtube_links } }
    end

    assert_redirected_to player_url(Player.last)
  end

  test "should show player" do
    get player_url(@player)
    assert_response :success
  end

  test "should get edit" do
    get edit_player_url(@player)
    assert_response :success
  end

  test "should update player" do
    patch player_url(@player), params: { player: { agent: @player.agent, born: @player.born, competition: @player.competition, contract_status: @player.contract_status, country: @player.country, current_club: @player.current_club, ending_contract: @player.ending_contract, foot: @player.foot, height: @player.height, international: @player.international, main_position: @player.main_position, name: @player.name, nationality: @player.nationality, other_positions: @player.other_positions, photo: @player.photo, second_nationality: @player.second_nationality, social_face: @player.social_face, social_insta: @player.social_insta, social_twit: @player.social_twit, tier: @player.tier, youtube_links: @player.youtube_links } }
    assert_redirected_to player_url(@player)
  end

  test "should destroy player" do
    assert_difference('Player.count', -1) do
      delete player_url(@player)
    end

    assert_redirected_to players_url
  end
end
