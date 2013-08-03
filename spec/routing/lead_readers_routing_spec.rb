require "spec_helper"

describe LeadReadersController do
  describe "routing" do

    it "routes to #index" do
      get("/lead_readers").should route_to("lead_readers#index")
    end

    it "routes to #new" do
      get("/lead_readers/new").should route_to("lead_readers#new")
    end

    it "routes to #show" do
      get("/lead_readers/1").should route_to("lead_readers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/lead_readers/1/edit").should route_to("lead_readers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/lead_readers").should route_to("lead_readers#create")
    end

    it "routes to #update" do
      put("/lead_readers/1").should route_to("lead_readers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/lead_readers/1").should route_to("lead_readers#destroy", :id => "1")
    end

  end
end
