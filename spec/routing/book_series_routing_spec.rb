require "spec_helper"

describe BookSeriesController do
  describe "routing" do

    it "routes to #index" do
      get("/book_series").should route_to("book_series#index")
    end

    it "routes to #new" do
      get("/book_series/new").should route_to("book_series#new")
    end

    it "routes to #show" do
      get("/book_series/1").should route_to("book_series#show", :id => "1")
    end

    it "routes to #edit" do
      get("/book_series/1/edit").should route_to("book_series#edit", :id => "1")
    end

    it "routes to #create" do
      post("/book_series").should route_to("book_series#create")
    end

    it "routes to #update" do
      put("/book_series/1").should route_to("book_series#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/book_series/1").should route_to("book_series#destroy", :id => "1")
    end

  end
end
