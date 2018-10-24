require "rails_helper"

RSpec.describe DeadlyQuakesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/deadly_quakes").to route_to("deadly_quakes#index")
    end

    it "routes to #new" do
      expect(:get => "/deadly_quakes/new").to route_to("deadly_quakes#new")
    end

    it "routes to #show" do
      expect(:get => "/deadly_quakes/1").to route_to("deadly_quakes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/deadly_quakes/1/edit").to route_to("deadly_quakes#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/deadly_quakes").to route_to("deadly_quakes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/deadly_quakes/1").to route_to("deadly_quakes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/deadly_quakes/1").to route_to("deadly_quakes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/deadly_quakes/1").to route_to("deadly_quakes#destroy", :id => "1")
    end
  end
end
