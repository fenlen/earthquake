require 'rails_helper'

RSpec.describe "tsunamis/index", type: :view do
  before(:each) do
    assign(:tsunamis, [
      Tsunami.create!(
        :SameDayAs => "Same Day As",
        :Focal_Depth => 2,
        :Primary_Magnitude => "9.99",
        :Country => "Country",
        :Location_Name => "Location Name",
        :Latitude => "9.99",
        :Longitude => "9.99",
        :Maximun_Water_Height => "9.99",
        :Total_Deaths => 3,
        :Total_Injuries => 4,
        :Total_Damage_Million_Dollars => "9.99",
        :Total_Houses_Destroyed => 5,
        :Total_Houses_Damaged => 6
      ),
      Tsunami.create!(
        :SameDayAs => "Same Day As",
        :Focal_Depth => 2,
        :Primary_Magnitude => "9.99",
        :Country => "Country",
        :Location_Name => "Location Name",
        :Latitude => "9.99",
        :Longitude => "9.99",
        :Maximun_Water_Height => "9.99",
        :Total_Deaths => 3,
        :Total_Injuries => 4,
        :Total_Damage_Million_Dollars => "9.99",
        :Total_Houses_Destroyed => 5,
        :Total_Houses_Damaged => 6
      )
    ])
  end

  it "renders a list of tsunamis" do
    render
    assert_select "tr>td", :text => "Same Day As".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Location Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end
