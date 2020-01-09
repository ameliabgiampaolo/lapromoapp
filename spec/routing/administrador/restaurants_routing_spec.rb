require "rails_helper"

RSpec.describe Administrador::RestaurantsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/administrador/restaurants").to route_to("administrador/restaurants#index")
    end

    it "routes to #new" do
      expect(:get => "/administrador/restaurants/new").to route_to("administrador/restaurants#new")
    end

    it "routes to #show" do
      expect(:get => "/administrador/restaurants/1").to route_to("administrador/restaurants#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/administrador/restaurants/1/edit").to route_to("administrador/restaurants#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/administrador/restaurants").to route_to("administrador/restaurants#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/administrador/restaurants/1").to route_to("administrador/restaurants#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/administrador/restaurants/1").to route_to("administrador/restaurants#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/administrador/restaurants/1").to route_to("administrador/restaurants#destroy", :id => "1")
    end
  end
end
