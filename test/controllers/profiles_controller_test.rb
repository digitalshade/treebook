require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  test "should get show" do
    get :show, id: users(:tzevai).profile_name
    assert_response :success
    assert_template 'profiles/show'
  end

    test "should return 404 on profile not found" do
        get :show, id: "doesn't exist"
        assert_response :not_found
    end
    
    test "that variables are assigned on successful profile viewing" do
        get :show, id: users(:tzevai).profile_name
        assert assigns(:user)
        assert_not_empty assigns(:statuses)
    end
    
    test "that only shows the correct users statuses" do
        get :show, id: users(:tzevai).profile_name
        assigns(:statuses).each do |status|
        assert_equal users(:tzevai), status.user
            end
    end
end
