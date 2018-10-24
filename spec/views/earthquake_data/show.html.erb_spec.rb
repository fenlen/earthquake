require 'rails_helper'

RSpec.describe "earthquake_data/show", type: :view do
  before(:each) do
    @earthquake_datum = assign(:earthquake_datum, EarthquakeDatum.create!(
      :Latitude => "9.99",
      :Longitude => "9.99",
      :Depth => 2,
      :Magnitude => "",
      :Magnitude => "Magnitude",
      :Type => "Type",
      :ID => "Id",
      :Source => "Source",
      :SameDayAs => "Same Day As"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Magnitude/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/Id/)
    expect(rendered).to match(/Source/)
    expect(rendered).to match(/Same Day As/)
  end
end
