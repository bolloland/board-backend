require "test_helper"

class GamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game = games(:one)
  end

  test "should get index" do
    get games_url, as: :json
    assert_response :success
  end

  test "should create game" do
    assert_difference('Game.count') do
      post games_url, params: { game: { age: @game.age, avg_rating: @game.avg_rating, description: @game.description, image_url: @game.image_url, max_player: @game.max_player, max_time: @game.max_time, min_player: @game.min_player, min_time: @game.min_time, name: @game.name, review_count: @game.review_count, thumb_url: @game.thumb_url, user_id: @game.user_id, year_published: @game.year_published } }, as: :json
    end

    assert_response 201
  end

  test "should show game" do
    get game_url(@game), as: :json
    assert_response :success
  end

  test "should update game" do
    patch game_url(@game), params: { game: { age: @game.age, avg_rating: @game.avg_rating, description: @game.description, image_url: @game.image_url, max_player: @game.max_player, max_time: @game.max_time, min_player: @game.min_player, min_time: @game.min_time, name: @game.name, review_count: @game.review_count, thumb_url: @game.thumb_url, user_id: @game.user_id, year_published: @game.year_published } }, as: :json
    assert_response 200
  end

  test "should destroy game" do
    assert_difference('Game.count', -1) do
      delete game_url(@game), as: :json
    end

    assert_response 204
  end
end
