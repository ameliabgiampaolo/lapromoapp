require "rails_helper"

RSpec.describe Restaurant::PromosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/restaurant/promos").to route_to("restaurant/promos#index")
    end

    it "routes to #new" do
      expect(:get => "/restaurant/promos/new").to route_to("restaurant/promos#new")
    end

    it "routes to #show" do
      expect(:get => "/restaurant/promos/1").to route_to("restaurant/promos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/restaurant/promos/1/edit").to route_to("restaurant/promos#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/restaurant/promos").to route_to("restaurant/promos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/restaurant/promos/1").to route_to("restaurant/promos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/restaurant/promos/1").to route_to("restaurant/promos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/restaurant/promos/1").to route_to("restaurant/promos#destroy", :id => "1")
    end
  end
end
