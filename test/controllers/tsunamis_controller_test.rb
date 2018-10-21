require 'test_helper'

class TsunamisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tsunami = tsunamis(:one)
  end

  test "should get index" do
    get tsunamis_url
    assert_response :success
  end

  test "should get new" do
    get new_tsunami_url
    assert_response :success
  end

  test "should create tsunami" do
    assert_difference('Tsunami.count') do
      post tsunamis_url, params: { tsunami: { Country: @tsunami.Country, DamageInMillions: @tsunami.DamageInMillions, Date: @tsunami.Date, Deaths: @tsunami.Deaths, FocalDepth: @tsunami.FocalDepth, HausesDamaged: @tsunami.HausesDamaged, HousesDestroyed: @tsunami.HousesDestroyed, Injuries: @tsunami.Injuries, Latitude: @tsunami.Latitude, Location: @tsunami.Location, Longitude: @tsunami.Longitude, Magnitude: @tsunami.Magnitude, MaximumWaterHeight: @tsunami.MaximumWaterHeight, SameDayAs: @tsunami.SameDayAs, Time: @tsunami.Time } }
    end

    assert_redirected_to tsunami_url(Tsunami.last)
  end

  test "should show tsunami" do
    get tsunami_url(@tsunami)
    assert_response :success
  end

  test "should get edit" do
    get edit_tsunami_url(@tsunami)
    assert_response :success
  end

  test "should update tsunami" do
    patch tsunami_url(@tsunami), params: { tsunami: { Country: @tsunami.Country, DamageInMillions: @tsunami.DamageInMillions, Date: @tsunami.Date, Deaths: @tsunami.Deaths, FocalDepth: @tsunami.FocalDepth, HausesDamaged: @tsunami.HausesDamaged, HousesDestroyed: @tsunami.HousesDestroyed, Injuries: @tsunami.Injuries, Latitude: @tsunami.Latitude, Location: @tsunami.Location, Longitude: @tsunami.Longitude, Magnitude: @tsunami.Magnitude, MaximumWaterHeight: @tsunami.MaximumWaterHeight, SameDayAs: @tsunami.SameDayAs, Time: @tsunami.Time } }
    assert_redirected_to tsunami_url(@tsunami)
  end

  test "should destroy tsunami" do
    assert_difference('Tsunami.count', -1) do
      delete tsunami_url(@tsunami)
    end

    assert_redirected_to tsunamis_url
  end
end
