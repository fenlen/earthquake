require "application_system_test_case"

class DeadliestsTest < ApplicationSystemTestCase
  setup do
    @deadliest = deadliests(:one)
  end

  test "visiting the index" do
    visit deadliests_url
    assert_selector "h1", text: "Deadliests"
  end

  test "creating a Deadliest" do
    visit deadliests_url
    click_on "New Deadliest"

    fill_in "Date", with: @deadliest.Date
    fill_in "Earthquakecode", with: @deadliest.EarthquakeCode
    fill_in "Latitude", with: @deadliest.Latitude
    fill_in "Location", with: @deadliest.Location
    fill_in "Longitude", with: @deadliest.Longitude
    fill_in "Magnitude", with: @deadliest.Magnitude
    fill_in "Deaths", with: @deadliest.deaths
    click_on "Create Deadliest"

    assert_text "Deadliest was successfully created"
    click_on "Back"
  end

  test "updating a Deadliest" do
    visit deadliests_url
    click_on "Edit", match: :first

    fill_in "Date", with: @deadliest.Date
    fill_in "Earthquakecode", with: @deadliest.EarthquakeCode
    fill_in "Latitude", with: @deadliest.Latitude
    fill_in "Location", with: @deadliest.Location
    fill_in "Longitude", with: @deadliest.Longitude
    fill_in "Magnitude", with: @deadliest.Magnitude
    fill_in "Deaths", with: @deadliest.deaths
    click_on "Update Deadliest"

    assert_text "Deadliest was successfully updated"
    click_on "Back"
  end

  test "destroying a Deadliest" do
    visit deadliests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Deadliest was successfully destroyed"
  end
end
