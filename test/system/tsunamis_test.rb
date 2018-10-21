require "application_system_test_case"

class TsunamisTest < ApplicationSystemTestCase
  setup do
    @tsunami = tsunamis(:one)
  end

  test "visiting the index" do
    visit tsunamis_url
    assert_selector "h1", text: "Tsunamis"
  end

  test "creating a Tsunami" do
    visit tsunamis_url
    click_on "New Tsunami"

    fill_in "Country", with: @tsunami.Country
    fill_in "Damageinmillions", with: @tsunami.DamageInMillions
    fill_in "Date", with: @tsunami.Date
    fill_in "Deaths", with: @tsunami.Deaths
    fill_in "Focaldepth", with: @tsunami.FocalDepth
    fill_in "Hausesdamaged", with: @tsunami.HausesDamaged
    fill_in "Housesdestroyed", with: @tsunami.HousesDestroyed
    fill_in "Injuries", with: @tsunami.Injuries
    fill_in "Latitude", with: @tsunami.Latitude
    fill_in "Location", with: @tsunami.Location
    fill_in "Longitude", with: @tsunami.Longitude
    fill_in "Magnitude", with: @tsunami.Magnitude
    fill_in "Maximumwaterheight", with: @tsunami.MaximumWaterHeight
    fill_in "Samedayas", with: @tsunami.SameDayAs
    fill_in "Time", with: @tsunami.Time
    click_on "Create Tsunami"

    assert_text "Tsunami was successfully created"
    click_on "Back"
  end

  test "updating a Tsunami" do
    visit tsunamis_url
    click_on "Edit", match: :first

    fill_in "Country", with: @tsunami.Country
    fill_in "Damageinmillions", with: @tsunami.DamageInMillions
    fill_in "Date", with: @tsunami.Date
    fill_in "Deaths", with: @tsunami.Deaths
    fill_in "Focaldepth", with: @tsunami.FocalDepth
    fill_in "Hausesdamaged", with: @tsunami.HausesDamaged
    fill_in "Housesdestroyed", with: @tsunami.HousesDestroyed
    fill_in "Injuries", with: @tsunami.Injuries
    fill_in "Latitude", with: @tsunami.Latitude
    fill_in "Location", with: @tsunami.Location
    fill_in "Longitude", with: @tsunami.Longitude
    fill_in "Magnitude", with: @tsunami.Magnitude
    fill_in "Maximumwaterheight", with: @tsunami.MaximumWaterHeight
    fill_in "Samedayas", with: @tsunami.SameDayAs
    fill_in "Time", with: @tsunami.Time
    click_on "Update Tsunami"

    assert_text "Tsunami was successfully updated"
    click_on "Back"
  end

  test "destroying a Tsunami" do
    visit tsunamis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tsunami was successfully destroyed"
  end
end
