require 'test_helper'

class ClassJoinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @class_join = class_joins(:one)
  end

  test "should get index" do
    get class_joins_url, as: :json
    assert_response :success
  end

  test "should create class_join" do
    assert_difference('ClassJoin.count') do
      post class_joins_url, params: { class_join: { char_class_id: @class_join.char_class_id, character_id: @class_join.character_id } }, as: :json
    end

    assert_response 201
  end

  test "should show class_join" do
    get class_join_url(@class_join), as: :json
    assert_response :success
  end

  test "should update class_join" do
    patch class_join_url(@class_join), params: { class_join: { char_class_id: @class_join.char_class_id, character_id: @class_join.character_id } }, as: :json
    assert_response 200
  end

  test "should destroy class_join" do
    assert_difference('ClassJoin.count', -1) do
      delete class_join_url(@class_join), as: :json
    end

    assert_response 204
  end
end
