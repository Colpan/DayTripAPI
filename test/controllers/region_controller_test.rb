require 'test_helper'

class RegionControllerTest < ActionController::TestCase
  
  test "Check that returns JSON without any params" do
    get :index
    assert_response :success
    assert_not_nil assigns(@regions)
    assert_equal(response.headers["Content-Type"],"application/json; charset=utf-8")
  end

end
