require "rails_helper"

RSpec.describe UserHerosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_heros").to route_to("user_heros#index")
    end


    it "routes to #show" do
      expect(:get => "/user_heros/1").to route_to("user_heros#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/user_heros").to route_to("user_heros#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_heros/1").to route_to("user_heros#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_heros/1").to route_to("user_heros#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_heros/1").to route_to("user_heros#destroy", :id => "1")
    end

  end
end
