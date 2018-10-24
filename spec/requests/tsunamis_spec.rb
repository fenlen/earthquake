require 'rails_helper'

RSpec.describe "Tsunamis", type: :request do
  describe "GET /tsunamis" do
    it "works! (now write some real specs)" do
      get tsunamis_path
      expect(response).to have_http_status(200)
    end
  end
end
