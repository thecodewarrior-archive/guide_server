require 'test_helper'

class GuideControllerTest < ActionController::TestCase
  test "should get all" do
    get :all
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get revisions" do
    get :revisions
    assert_response :success
  end

end
