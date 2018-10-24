require 'rails_helper'

RSpec.describe "deadly_quakes/show", type: :view do
  before(:each) do
    @deadly_quake = assign(:deadly_quake, DeadlyQuake.create!(
      :EqCode => "Eq Code",
      :Location => "Location",
      :Longitude => "9.99",
      :Latitude => "9.99",
      :Deaths => 2,
      :Magnitude => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Eq Code/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
  end
end
