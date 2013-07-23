require "spec_helper"

describe ReadingPlansController do
  describe "routing" do

    it "routes to #index" do
      get("/reading_plans").should route_to("reading_plans#index")
    end

    it "routes to #new" do
      get("/reading_plans/new").should route_to("reading_plans#new")
    end

    it "routes to #show" do
      get("/reading_plans/1").should route_to("reading_plans#show", :id => "1")
    end

    it "routes to #edit" do
      get("/reading_plans/1/edit").should route_to("reading_plans#edit", :id => "1")
    end

    it "routes to #create" do
      post("/reading_plans").should route_to("reading_plans#create")
    end

    it "routes to #update" do
      put("/reading_plans/1").should route_to("reading_plans#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/reading_plans/1").should route_to("reading_plans#destroy", :id => "1")
    end

  end
end
