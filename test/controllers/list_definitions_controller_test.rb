require 'test_helper'

class ListDefinitionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @list_definition = list_definitions(:one)
  end

  test "should get index" do
    get list_definitions_url, as: :json
    assert_response :success
  end

  test "should create list_definition" do
    assert_difference('ListDefinition.count') do
      post list_definitions_url, params: { list_definition: { definition_id: @list_definition.definition_id, list_id: @list_definition.list_id } }, as: :json
    end

    assert_response 201
  end

  test "should show list_definition" do
    get list_definition_url(@list_definition), as: :json
    assert_response :success
  end

  test "should update list_definition" do
    patch list_definition_url(@list_definition), params: { list_definition: { definition_id: @list_definition.definition_id, list_id: @list_definition.list_id } }, as: :json
    assert_response 200
  end

  test "should destroy list_definition" do
    assert_difference('ListDefinition.count', -1) do
      delete list_definition_url(@list_definition), as: :json
    end

    assert_response 204
  end
end
