require 'rails_helper'

RSpec.describe "deadly_quakes/index", type: :view do
  before(:each) do
    assign(:deadly_quakes, [
      DeadlyQuake.create!(
        :ID => "Id",
        :Location => "Location",
        :Longitude => "9.99",
        :Latitude => "9.99",
        :Deaths => 2,
        :Magnitude => "9.99"
      ),
      DeadlyQuake.create!(
        :ID => "Id",
        :Location => "Location",
        :Longitude => "9.99",
        :Latitude => "9.99",
        :Deaths => 2,
        :Magnitude => "9.99"
      )
    ])
  end

  it "renders a list of deadly_quakes" do
    render
    assert_select "tr>td", :text => "Id".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
