require 'test_helper'

class CondosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @condo = condos(:one)
  end

  test "should get index" do
    get condos_url
    assert_response :success
  end

  test "should get new" do
    get new_condo_url
    assert_response :success
  end

  test "should create condo" do
    assert_difference('Condo.count') do
      post condos_url, params: { condo: { name: @condo.name } }
    end

    assert_redirected_to condo_url(Condo.last)
  end

  test "should show condo" do
    get condo_url(@condo)
    assert_response :success
  end

  test "should get edit" do
    get edit_condo_url(@condo)
    assert_response :success
  end

  test "should update condo" do
    patch condo_url(@condo), params: { condo: { name: @condo.name } }
    assert_redirected_to condo_url(@condo)
  end

  test "should destroy condo" do
    assert_difference('Condo.count', -1) do
      delete condo_url(@condo)
    end

    assert_redirected_to condos_url
  end
end
