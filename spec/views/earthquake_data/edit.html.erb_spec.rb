require 'rails_helper'

RSpec.describe "earthquake_data/edit", type: :view do
  before(:each) do
    @earthquake_datum = assign(:earthquake_datum, EarthquakeDatum.create!(
      :Latitude => "9.99",
      :Longitude => "9.99",
      :Depth => 1,
      :Magnitude => "",
      :Magnitude => "MyString",
      :Type => "MyString",
      :ID => "MyString",
      :Source => "MyString",
      :SameDayAs => "MyString"
    ))
  end

  it "renders the edit earthquake_datum form" do
    render

    assert_select "form[action=?][method=?]", earthquake_datum_path(@earthquake_datum), "post" do

      assert_select "input[name=?]", "earthquake_datum[Latitude]"

      assert_select "input[name=?]", "earthquake_datum[Longitude]"

      assert_select "input[name=?]", "earthquake_datum[Depth]"

      assert_select "input[name=?]", "earthquake_datum[Magnitude]"

      assert_select "input[name=?]", "earthquake_datum[Magnitude]"

      assert_select "input[name=?]", "earthquake_datum[Type]"

      assert_select "input[name=?]", "earthquake_datum[ID]"

      assert_select "input[name=?]", "earthquake_datum[Source]"

      assert_select "input[name=?]", "earthquake_datum[SameDayAs]"
    end
  end
end
