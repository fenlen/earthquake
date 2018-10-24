require 'rails_helper'

RSpec.describe "tsunamis/edit", type: :view do
  before(:each) do
    @tsunami = assign(:tsunami, Tsunami.create!(
      :SameDayAs => "MyString",
      :Focal_Depth => 1,
      :Primary_Magnitude => "9.99",
      :Country => "MyString",
      :Location_Name => "MyString",
      :Latitude => "9.99",
      :Longitude => "9.99",
      :Maximun_Water_Height => "9.99",
      :Total_Deaths => 1,
      :Total_Injuries => 1,
      :Total_Damage_Million_Dollars => "9.99",
      :Total_Houses_Destroyed => 1,
      :Total_Houses_Damaged => 1
    ))
  end

  it "renders the edit tsunami form" do
    render

    assert_select "form[action=?][method=?]", tsunami_path(@tsunami), "post" do

      assert_select "input[name=?]", "tsunami[SameDayAs]"

      assert_select "input[name=?]", "tsunami[Focal_Depth]"

      assert_select "input[name=?]", "tsunami[Primary_Magnitude]"

      assert_select "input[name=?]", "tsunami[Country]"

      assert_select "input[name=?]", "tsunami[Location_Name]"

      assert_select "input[name=?]", "tsunami[Latitude]"

      assert_select "input[name=?]", "tsunami[Longitude]"

      assert_select "input[name=?]", "tsunami[Maximun_Water_Height]"

      assert_select "input[name=?]", "tsunami[Total_Deaths]"

      assert_select "input[name=?]", "tsunami[Total_Injuries]"

      assert_select "input[name=?]", "tsunami[Total_Damage_Million_Dollars]"

      assert_select "input[name=?]", "tsunami[Total_Houses_Destroyed]"

      assert_select "input[name=?]", "tsunami[Total_Houses_Damaged]"
    end
  end
end
