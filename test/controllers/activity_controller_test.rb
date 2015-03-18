require 'test_helper'

class ActivityControllerTest < ActionController::TestCase
  
  test "Check that returns JSON without any params" do
    get :index
    assert_response :success
    assert_not_nil assigns(@activities)
  end

  test "Check that returns right results with country params" do
    expected_answer = Activity.joins(:country).where(countries: { country: "US" })
    get :index, :country => "US"
    assert_response :success
    assert_includes(expected_answer.to_json,response.body)
    assert_includes(response.body,expected_answer.to_json)
  end

  test "Check that returns none when should have no results" do
    expected_answer = Activity.joins(:country).where(countries: { country: "CA" })
    get :index, :country => "CA"
    assert_response :success
    assert_includes(expected_answer.to_json,response.body)
    assert_includes(response.body,expected_answer.to_json)
  end

  test "Check that returns a result for name query" do
    expected_answer = Activity.where('name LIKE ?', "%Tierrasanta%")
    get :index, :q => "Tierrasanta"
    assert_response :success
    assert_includes(expected_answer.to_json,response.body)
    assert_includes(response.body,expected_answer.to_json)
  end

  test "Check that returned data has content type of json" do
    get :index
    assert_response :success
    assert_equal(response.headers["Content-Type"],"application/json; charset=utf-8")
  end

end
