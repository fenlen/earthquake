require "rails_helper"

RSpec.describe TsunamisController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/tsunamis").to route_to("tsunamis#index")
    end

    it "routes to #new" do
      expect(:get => "/tsunamis/new").to route_to("tsunamis#new")
    end

    it "routes to #show" do
      expect(:get => "/tsunamis/1").to route_to("tsunamis#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tsunamis/1/edit").to route_to("tsunamis#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/tsunamis").to route_to("tsunamis#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tsunamis/1").to route_to("tsunamis#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tsunamis/1").to route_to("tsunamis#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tsunamis/1").to route_to("tsunamis#destroy", :id => "1")
    end
  end
end
