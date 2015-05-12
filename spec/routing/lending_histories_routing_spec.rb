require "rails_helper"

RSpec.describe LendingHistoriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/lending_histories").to route_to("lending_histories#index")
    end

    it "routes to #new" do
      expect(:get => "/lending_histories/new").to route_to("lending_histories#new")
    end

    it "routes to #show" do
      expect(:get => "/lending_histories/1").to route_to("lending_histories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/lending_histories/1/edit").to route_to("lending_histories#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/lending_histories").to route_to("lending_histories#create")
    end

    it "routes to #update" do
      expect(:put => "/lending_histories/1").to route_to("lending_histories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lending_histories/1").to route_to("lending_histories#destroy", :id => "1")
    end

  end
end
