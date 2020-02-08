require 'test_helper'

class CharClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @char_class = char_classes(:one)
  end

  test "should get index" do
    get char_classes_url, as: :json
    assert_response :success
  end

  test "should create char_class" do
    assert_difference('CharClass.count') do
      post char_classes_url, params: { char_class: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show char_class" do
    get char_class_url(@char_class), as: :json
    assert_response :success
  end

  test "should update char_class" do
    patch char_class_url(@char_class), params: { char_class: {  } }, as: :json
    assert_response 200
  end

  test "should destroy char_class" do
    assert_difference('CharClass.count', -1) do
      delete char_class_url(@char_class), as: :json
    end

    assert_response 204
  end
end
