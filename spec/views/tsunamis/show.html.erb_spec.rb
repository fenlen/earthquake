require 'rails_helper'

RSpec.describe "tsunamis/show", type: :view do
  before(:each) do
    @tsunami = assign(:tsunami, Tsunami.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Same Day As/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Location Name/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
  end
end
