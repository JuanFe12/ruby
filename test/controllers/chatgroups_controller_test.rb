require 'test_helper'

class ChatgroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chatgroup = chatgroups(:one)
  end

  test "should get index" do
    get chatgroups_url, as: :json
    assert_response :success
  end

  test "should create chatgroup" do
    assert_difference('Chatgroup.count') do
      post chatgroups_url, params: { chatgroup: { messagegroup: @chatgroup.messagegroup, namegroup: @chatgroup.namegroup, photogroup: @chatgroup.photogroup } }, as: :json
    end

    assert_response 201
  end

  test "should show chatgroup" do
    get chatgroup_url(@chatgroup), as: :json
    assert_response :success
  end

  test "should update chatgroup" do
    patch chatgroup_url(@chatgroup), params: { chatgroup: { messagegroup: @chatgroup.messagegroup, namegroup: @chatgroup.namegroup, photogroup: @chatgroup.photogroup } }, as: :json
    assert_response 200
  end

  test "should destroy chatgroup" do
    assert_difference('Chatgroup.count', -1) do
      delete chatgroup_url(@chatgroup), as: :json
    end

    assert_response 204
  end
end
