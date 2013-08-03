require "spec_helper"

describe CriticsController do
  describe "routing" do

    it "routes to #index" do
      get("/critics").should route_to("critics#index")
    end

    it "routes to #new" do
      get("/critics/new").should route_to("critics#new")
    end

    it "routes to #show" do
      get("/critics/1").should route_to("critics#show", :id => "1")
    end

    it "routes to #edit" do
      get("/critics/1/edit").should route_to("critics#edit", :id => "1")
    end

    it "routes to #create" do
      post("/critics").should route_to("critics#create")
    end

    it "routes to #update" do
      put("/critics/1").should route_to("critics#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/critics/1").should route_to("critics#destroy", :id => "1")
    end

  end
end
