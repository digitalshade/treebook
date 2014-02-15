require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  test "that /login route opens registration page" do
    get '/login'
    assert_response :success
    end
    
    test "that /logout route opens logout page" do
    get '/logout'
    assert_response :redirect
    assert_redirected_to '/'
    end
end
