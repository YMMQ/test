require 'test_helper'

class DtypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dtype = dtypes(:one)
  end

  test "should get index" do
    get dtypes_url
    assert_response :success
  end

  test "should get new" do
    get new_dtype_url
    assert_response :success
  end

  test "should create dtype" do
    assert_difference('Dtype.count') do
      post dtypes_url, params: { dtype: { name: @dtype.name, remarks: @dtype.remarks } }
    end

    assert_redirected_to dtype_url(Dtype.last)
  end

  test "should show dtype" do
    get dtype_url(@dtype)
    assert_response :success
  end

  test "should get edit" do
    get edit_dtype_url(@dtype)
    assert_response :success
  end

  test "should update dtype" do
    patch dtype_url(@dtype), params: { dtype: { name: @dtype.name, remarks: @dtype.remarks } }
    assert_redirected_to dtype_url(@dtype)
  end

  test "should destroy dtype" do
    assert_difference('Dtype.count', -1) do
      delete dtype_url(@dtype)
    end

    assert_redirected_to dtypes_url
  end
end
