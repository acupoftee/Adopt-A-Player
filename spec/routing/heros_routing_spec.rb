require "rails_helper"

RSpec.describe HerosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/heros").to route_to("heros#index")
    end


    it "routes to #show" do
      expect(:get => "/heros/1").to route_to("heros#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/heros").to route_to("heros#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/heros/1").to route_to("heros#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/heros/1").to route_to("heros#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/heros/1").to route_to("heros#destroy", :id => "1")
    end

  end
end
