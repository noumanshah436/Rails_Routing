require "application_system_test_case"

class Admin::SellersTest < ApplicationSystemTestCase
  setup do
    @admin_seller = admin_sellers(:one)
  end

  test "visiting the index" do
    visit admin_sellers_url
    assert_selector "h1", text: "Admin/Sellers"
  end

  test "creating a Seller" do
    visit admin_sellers_url
    click_on "New Admin/Seller"

    fill_in "Name", with: @admin_seller.name
    click_on "Create Seller"

    assert_text "Seller was successfully created"
    click_on "Back"
  end

  test "updating a Seller" do
    visit admin_sellers_url
    click_on "Edit", match: :first

    fill_in "Name", with: @admin_seller.name
    click_on "Update Seller"

    assert_text "Seller was successfully updated"
    click_on "Back"
  end

  test "destroying a Seller" do
    visit admin_sellers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Seller was successfully destroyed"
  end
end
