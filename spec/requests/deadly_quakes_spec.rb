require 'rails_helper'

RSpec.describe "DeadlyQuakes", type: :request do
  describe "GET /deadly_quakes" do
    it "works! (now write some real specs)" do
      get deadly_quakes_path
      expect(response).to have_http_status(200)
    end
  end
end
