require "application_system_test_case"

class Animals::CatsTest < ApplicationSystemTestCase
  setup do
    @animals_cat = animals_cats(:one)
  end

  test "visiting the index" do
    visit animals_cats_url
    assert_selector "h1", text: "Animals/Cats"
  end

  test "creating a Cat" do
    visit animals_cats_url
    click_on "New Animals/Cat"

    fill_in "Age", with: @animals_cat.age
    fill_in "Name", with: @animals_cat.name
    click_on "Create Cat"

    assert_text "Cat was successfully created"
    click_on "Back"
  end

  test "updating a Cat" do
    visit animals_cats_url
    click_on "Edit", match: :first

    fill_in "Age", with: @animals_cat.age
    fill_in "Name", with: @animals_cat.name
    click_on "Update Cat"

    assert_text "Cat was successfully updated"
    click_on "Back"
  end

  test "destroying a Cat" do
    visit animals_cats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cat was successfully destroyed"
  end
end
