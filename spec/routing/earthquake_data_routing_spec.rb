require "rails_helper"

RSpec.describe EarthquakeDataController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/earthquake_data").to route_to("earthquake_data#index")
    end

    it "routes to #new" do
      expect(:get => "/earthquake_data/new").to route_to("earthquake_data#new")
    end

    it "routes to #show" do
      expect(:get => "/earthquake_data/1").to route_to("earthquake_data#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/earthquake_data/1/edit").to route_to("earthquake_data#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/earthquake_data").to route_to("earthquake_data#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/earthquake_data/1").to route_to("earthquake_data#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/earthquake_data/1").to route_to("earthquake_data#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/earthquake_data/1").to route_to("earthquake_data#destroy", :id => "1")
    end
  end
end
