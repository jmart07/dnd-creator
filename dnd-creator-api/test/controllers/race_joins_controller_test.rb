require 'test_helper'

class RaceJoinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @race_join = race_joins(:one)
  end

  test "should get index" do
    get race_joins_url, as: :json
    assert_response :success
  end

  test "should create race_join" do
    assert_difference('RaceJoin.count') do
      post race_joins_url, params: { race_join: { character_id: @race_join.character_id, race_id: @race_join.race_id } }, as: :json
    end

    assert_response 201
  end

  test "should show race_join" do
    get race_join_url(@race_join), as: :json
    assert_response :success
  end

  test "should update race_join" do
    patch race_join_url(@race_join), params: { race_join: { character_id: @race_join.character_id, race_id: @race_join.race_id } }, as: :json
    assert_response 200
  end

  test "should destroy race_join" do
    assert_difference('RaceJoin.count', -1) do
      delete race_join_url(@race_join), as: :json
    end

    assert_response 204
  end
end
