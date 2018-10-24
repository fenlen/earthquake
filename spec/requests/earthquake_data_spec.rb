require 'rails_helper'

RSpec.describe "EarthquakeData", type: :request do
  describe "GET /earthquake_data" do
    it "works! (now write some real specs)" do
      get earthquake_data_path
      expect(response).to have_http_status(200)
    end
  end
end
