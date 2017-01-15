require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get comments_create_url
    assert_response :success
  end

  test "should get detroy" do
    get comments_detroy_url
    assert_response :success
  end

end
