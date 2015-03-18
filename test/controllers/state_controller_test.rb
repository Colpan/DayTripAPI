require 'test_helper'

class StateControllerTest < ActionController::TestCase
  
  test "Check that returns JSON without any params" do
    get :index
    assert_response :success
    assert_not_nil assigns(@states)
    assert_equal(response.headers["Content-Type"],"application/json; charset=utf-8")
  end

end
