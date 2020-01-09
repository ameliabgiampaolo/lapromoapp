require "rails_helper"

RSpec.describe Restaurant::MenuTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/restaurant/menu_types").to route_to("restaurant/menu_types#index")
    end

    it "routes to #new" do
      expect(:get => "/restaurant/menu_types/new").to route_to("restaurant/menu_types#new")
    end

    it "routes to #show" do
      expect(:get => "/restaurant/menu_types/1").to route_to("restaurant/menu_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/restaurant/menu_types/1/edit").to route_to("restaurant/menu_types#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/restaurant/menu_types").to route_to("restaurant/menu_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/restaurant/menu_types/1").to route_to("restaurant/menu_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/restaurant/menu_types/1").to route_to("restaurant/menu_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/restaurant/menu_types/1").to route_to("restaurant/menu_types#destroy", :id => "1")
    end
  end
end
