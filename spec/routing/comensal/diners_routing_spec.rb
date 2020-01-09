require "rails_helper"

RSpec.describe Comensal::DinersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/comensal/diners").to route_to("comensal/diners#index")
    end

    it "routes to #new" do
      expect(:get => "/comensal/diners/new").to route_to("comensal/diners#new")
    end

    it "routes to #show" do
      expect(:get => "/comensal/diners/1").to route_to("comensal/diners#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/comensal/diners/1/edit").to route_to("comensal/diners#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/comensal/diners").to route_to("comensal/diners#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/comensal/diners/1").to route_to("comensal/diners#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/comensal/diners/1").to route_to("comensal/diners#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/comensal/diners/1").to route_to("comensal/diners#destroy", :id => "1")
    end
  end
end
