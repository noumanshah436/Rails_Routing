require "application_system_test_case"

class Blog::BlogsTest < ApplicationSystemTestCase
  setup do
    @blog_blog = blog_blogs(:one)
  end

  test "visiting the index" do
    visit blog_blogs_url
    assert_selector "h1", text: "Blog/Blogs"
  end

  test "creating a Blog" do
    visit blog_blogs_url
    click_on "New Blog/Blog"

    fill_in "Name", with: @blog_blog.name
    click_on "Create Blog"

    assert_text "Blog was successfully created"
    click_on "Back"
  end

  test "updating a Blog" do
    visit blog_blogs_url
    click_on "Edit", match: :first

    fill_in "Name", with: @blog_blog.name
    click_on "Update Blog"

    assert_text "Blog was successfully updated"
    click_on "Back"
  end

  test "destroying a Blog" do
    visit blog_blogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blog was successfully destroyed"
  end
end
