require 'test_helper'

class Admin::SellersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_seller = admin_sellers(:one)
  end

  test "should get index" do
    get admin_sellers_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_seller_url
    assert_response :success
  end

  test "should create admin_seller" do
    assert_difference('Admin::Seller.count') do
      post admin_sellers_url, params: { admin_seller: { name: @admin_seller.name } }
    end

    assert_redirected_to admin_seller_url(Admin::Seller.last)
  end

  test "should show admin_seller" do
    get admin_seller_url(@admin_seller)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_seller_url(@admin_seller)
    assert_response :success
  end

  test "should update admin_seller" do
    patch admin_seller_url(@admin_seller), params: { admin_seller: { name: @admin_seller.name } }
    assert_redirected_to admin_seller_url(@admin_seller)
  end

  test "should destroy admin_seller" do
    assert_difference('Admin::Seller.count', -1) do
      delete admin_seller_url(@admin_seller)
    end

    assert_redirected_to admin_sellers_url
  end
end
