require 'rails_helper'

RSpec.describe "earthquake_data/index", type: :view do
  before(:each) do
    assign(:earthquake_data, [
      EarthquakeDatum.create!(
        :Latitude => "9.99",
        :Longitude => "9.99",
        :Depth => 2,
        :Magnitude => "",
        :Magnitude => "Magnitude",
        :Type => "Type",
        :SourceId => "Source",
        :Source => "Source",
        :SameDayAs => "Same Day As"
      ),
      EarthquakeDatum.create!(
        :Latitude => "9.99",
        :Longitude => "9.99",
        :Depth => 2,
        :Magnitude => "",
        :Magnitude => "Magnitude",
        :Type => "Type",
        :SourceId => "Source",
        :Source => "Source",
        :SameDayAs => "Same Day As"
      )
    ])
  end

  it "renders a list of earthquake_data" do
    render
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Magnitude".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Source".to_s, :count => 2
    assert_select "tr>td", :text => "Source".to_s, :count => 2
    assert_select "tr>td", :text => "Same Day As".to_s, :count => 2
  end
end
