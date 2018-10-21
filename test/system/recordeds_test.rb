require "application_system_test_case"

class RecordedsTest < ApplicationSystemTestCase
  setup do
    @recorded = recordeds(:one)
  end

  test "visiting the index" do
    visit recordeds_url
    assert_selector "h1", text: "Recordeds"
  end

  test "creating a Recorded" do
    visit recordeds_url
    click_on "New Recorded"

    fill_in "Date", with: @recorded.Date
    fill_in "Depth", with: @recorded.Depth
    fill_in "Latitude", with: @recorded.Latitude
    fill_in "Longitude", with: @recorded.Longitude
    fill_in "Magnitude", with: @recorded.Magnitude
    fill_in "Magnitudetype", with: @recorded.MagnitudeType
    fill_in "Samedayas", with: @recorded.SameDayAs
    fill_in "Source", with: @recorded.Source
    fill_in "Sourceid", with: @recorded.SourceId
    fill_in "Time", with: @recorded.Time
    click_on "Create Recorded"

    assert_text "Recorded was successfully created"
    click_on "Back"
  end

  test "updating a Recorded" do
    visit recordeds_url
    click_on "Edit", match: :first

    fill_in "Date", with: @recorded.Date
    fill_in "Depth", with: @recorded.Depth
    fill_in "Latitude", with: @recorded.Latitude
    fill_in "Longitude", with: @recorded.Longitude
    fill_in "Magnitude", with: @recorded.Magnitude
    fill_in "Magnitudetype", with: @recorded.MagnitudeType
    fill_in "Samedayas", with: @recorded.SameDayAs
    fill_in "Source", with: @recorded.Source
    fill_in "Sourceid", with: @recorded.SourceId
    fill_in "Time", with: @recorded.Time
    click_on "Update Recorded"

    assert_text "Recorded was successfully updated"
    click_on "Back"
  end

  test "destroying a Recorded" do
    visit recordeds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Recorded was successfully destroyed"
  end
end
