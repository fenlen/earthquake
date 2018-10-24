require 'rails_helper'

RSpec.describe "deadly_quakes/edit", type: :view do
  before(:each) do
    @deadly_quake = assign(:deadly_quake, DeadlyQuake.create!(
      :ID => "MyString",
      :Location => "MyString",
      :Longitude => "9.99",
      :Latitude => "9.99",
      :Deaths => 1,
      :Magnitude => "9.99"
    ))
  end

  it "renders the edit deadly_quake form" do
    render

    assert_select "form[action=?][method=?]", deadly_quake_path(@deadly_quake), "post" do

      assert_select "input[name=?]", "deadly_quake[ID]"

      assert_select "input[name=?]", "deadly_quake[Location]"

      assert_select "input[name=?]", "deadly_quake[Longitude]"

      assert_select "input[name=?]", "deadly_quake[Latitude]"

      assert_select "input[name=?]", "deadly_quake[Deaths]"

      assert_select "input[name=?]", "deadly_quake[Magnitude]"
    end
  end
end
