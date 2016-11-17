require 'test_helper'

class AddvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @addv = addvs(:one)
  end

  test "should get index" do
    get addvs_url
    assert_response :success
  end

  test "should get new" do
    get new_addv_url
    assert_response :success
  end

  test "should create addv" do
    assert_difference('Addv.count') do
      post addvs_url, params: { addv: { image: @addv.image, organization_id: @addv.organization_id, title: @addv.title } }
    end

    assert_redirected_to addv_url(Addv.last)
  end

  test "should show addv" do
    get addv_url(@addv)
    assert_response :success
  end

  test "should get edit" do
    get edit_addv_url(@addv)
    assert_response :success
  end

  test "should update addv" do
    patch addv_url(@addv), params: { addv: { image: @addv.image, organization_id: @addv.organization_id, title: @addv.title } }
    assert_redirected_to addv_url(@addv)
  end

  test "should destroy addv" do
    assert_difference('Addv.count', -1) do
      delete addv_url(@addv)
    end

    assert_redirected_to addvs_url
  end
end
