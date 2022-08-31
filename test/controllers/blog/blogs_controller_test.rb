require 'test_helper'

class Blog::BlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blog_blog = blog_blogs(:one)
  end

  test "should get index" do
    get blog_blogs_url
    assert_response :success
  end

  test "should get new" do
    get new_blog_blog_url
    assert_response :success
  end

  test "should create blog_blog" do
    assert_difference('Blog::Blog.count') do
      post blog_blogs_url, params: { blog_blog: { name: @blog_blog.name } }
    end

    assert_redirected_to blog_blog_url(Blog::Blog.last)
  end

  test "should show blog_blog" do
    get blog_blog_url(@blog_blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_blog_blog_url(@blog_blog)
    assert_response :success
  end

  test "should update blog_blog" do
    patch blog_blog_url(@blog_blog), params: { blog_blog: { name: @blog_blog.name } }
    assert_redirected_to blog_blog_url(@blog_blog)
  end

  test "should destroy blog_blog" do
    assert_difference('Blog::Blog.count', -1) do
      delete blog_blog_url(@blog_blog)
    end

    assert_redirected_to blog_blogs_url
  end
end
