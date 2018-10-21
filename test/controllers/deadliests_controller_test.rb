require 'test_helper'

class DeadliestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deadliest = deadliests(:one)
  end

  test "should get index" do
    get deadliests_url
    assert_response :success
  end

  test "should get new" do
    get new_deadliest_url
    assert_response :success
  end

  test "should create deadliest" do
    assert_difference('Deadliest.count') do
      post deadliests_url, params: { deadliest: { Date: @deadliest.Date, EarthquakeCode: @deadliest.EarthquakeCode, Latitude: @deadliest.Latitude, Location: @deadliest.Location, Longitude: @deadliest.Longitude, Magnitude: @deadliest.Magnitude, deaths: @deadliest.deaths } }
    end

    assert_redirected_to deadliest_url(Deadliest.last)
  end

  test "should show deadliest" do
    get deadliest_url(@deadliest)
    assert_response :success
  end

  test "should get edit" do
    get edit_deadliest_url(@deadliest)
    assert_response :success
  end

  test "should update deadliest" do
    patch deadliest_url(@deadliest), params: { deadliest: { Date: @deadliest.Date, EarthquakeCode: @deadliest.EarthquakeCode, Latitude: @deadliest.Latitude, Location: @deadliest.Location, Longitude: @deadliest.Longitude, Magnitude: @deadliest.Magnitude, deaths: @deadliest.deaths } }
    assert_redirected_to deadliest_url(@deadliest)
  end

  test "should destroy deadliest" do
    assert_difference('Deadliest.count', -1) do
      delete deadliest_url(@deadliest)
    end

    assert_redirected_to deadliests_url
  end
end
