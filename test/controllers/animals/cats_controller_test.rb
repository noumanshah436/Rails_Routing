require 'test_helper'

class Animals::CatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animals_cat = animals_cats(:one)
  end

  test "should get index" do
    get animals_cats_url
    assert_response :success
  end

  test "should get new" do
    get new_animals_cat_url
    assert_response :success
  end

  test "should create animals_cat" do
    assert_difference('Animals::Cat.count') do
      post animals_cats_url, params: { animals_cat: { age: @animals_cat.age, name: @animals_cat.name } }
    end

    assert_redirected_to animals_cat_url(Animals::Cat.last)
  end

  test "should show animals_cat" do
    get animals_cat_url(@animals_cat)
    assert_response :success
  end

  test "should get edit" do
    get edit_animals_cat_url(@animals_cat)
    assert_response :success
  end

  test "should update animals_cat" do
    patch animals_cat_url(@animals_cat), params: { animals_cat: { age: @animals_cat.age, name: @animals_cat.name } }
    assert_redirected_to animals_cat_url(@animals_cat)
  end

  test "should destroy animals_cat" do
    assert_difference('Animals::Cat.count', -1) do
      delete animals_cat_url(@animals_cat)
    end

    assert_redirected_to animals_cats_url
  end
end
