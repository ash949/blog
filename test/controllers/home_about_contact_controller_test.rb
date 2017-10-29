require 'test_helper'

class HomeAboutContactControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_about_contact_index_url
    assert_response :success
  end

  test "should get about" do
    get home_about_contact_about_url
    assert_response :success
  end

  test "should get contact" do
    get home_about_contact_contact_url
    assert_response :success
  end

end
