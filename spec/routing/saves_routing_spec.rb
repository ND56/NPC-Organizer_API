require "rails_helper"

RSpec.describe SavesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/saves").to route_to("saves#index")
    end


    it "routes to #show" do
      expect(:get => "/saves/1").to route_to("saves#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/saves").to route_to("saves#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/saves/1").to route_to("saves#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/saves/1").to route_to("saves#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/saves/1").to route_to("saves#destroy", :id => "1")
    end

  end
end
