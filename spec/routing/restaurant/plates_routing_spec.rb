require "rails_helper"

RSpec.describe Restaurant::PlatesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/restaurant/plates").to route_to("restaurant/plates#index")
    end

    it "routes to #new" do
      expect(:get => "/restaurant/plates/new").to route_to("restaurant/plates#new")
    end

    it "routes to #show" do
      expect(:get => "/restaurant/plates/1").to route_to("restaurant/plates#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/restaurant/plates/1/edit").to route_to("restaurant/plates#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/restaurant/plates").to route_to("restaurant/plates#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/restaurant/plates/1").to route_to("restaurant/plates#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/restaurant/plates/1").to route_to("restaurant/plates#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/restaurant/plates/1").to route_to("restaurant/plates#destroy", :id => "1")
    end
  end
end
