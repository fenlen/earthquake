require 'rails_helper'

RSpec.describe "deadly_quakes/new", type: :view do
  before(:each) do
    assign(:deadly_quake, DeadlyQuake.new(
      :ID => "MyString",
      :Location => "MyString",
      :Longitude => "9.99",
      :Latitude => "9.99",
      :Deaths => 1,
      :Magnitude => "9.99"
    ))
  end

  it "renders new deadly_quake form" do
    render

    assert_select "form[action=?][method=?]", deadly_quakes_path, "post" do

      assert_select "input[name=?]", "deadly_quake[ID]"

      assert_select "input[name=?]", "deadly_quake[Location]"

      assert_select "input[name=?]", "deadly_quake[Longitude]"

      assert_select "input[name=?]", "deadly_quake[Latitude]"

      assert_select "input[name=?]", "deadly_quake[Deaths]"

      assert_select "input[name=?]", "deadly_quake[Magnitude]"
    end
  end
end
