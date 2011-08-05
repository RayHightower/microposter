require "spec_helper"

describe JackrabbitsController do
  describe "routing" do

    it "routes to #index" do
      get("/jackrabbits").should route_to("jackrabbits#index")
    end

    it "routes to #new" do
      get("/jackrabbits/new").should route_to("jackrabbits#new")
    end

    it "routes to #show" do
      get("/jackrabbits/1").should route_to("jackrabbits#show", :id => "1")
    end

    it "routes to #edit" do
      get("/jackrabbits/1/edit").should route_to("jackrabbits#edit", :id => "1")
    end

    it "routes to #create" do
      post("/jackrabbits").should route_to("jackrabbits#create")
    end

    it "routes to #update" do
      put("/jackrabbits/1").should route_to("jackrabbits#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/jackrabbits/1").should route_to("jackrabbits#destroy", :id => "1")
    end

  end
end
