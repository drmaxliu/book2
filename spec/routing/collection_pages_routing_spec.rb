require "spec_helper"

describe CollectionPagesController do
  describe "routing" do

    it "routes to #index" do
      get("/collection_pages").should route_to("collection_pages#index")
    end

    it "routes to #new" do
      get("/collection_pages/new").should route_to("collection_pages#new")
    end

    it "routes to #show" do
      get("/collection_pages/1").should route_to("collection_pages#show", :id => "1")
    end

    it "routes to #edit" do
      get("/collection_pages/1/edit").should route_to("collection_pages#edit", :id => "1")
    end

    it "routes to #create" do
      post("/collection_pages").should route_to("collection_pages#create")
    end

    it "routes to #update" do
      put("/collection_pages/1").should route_to("collection_pages#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/collection_pages/1").should route_to("collection_pages#destroy", :id => "1")
    end

  end
end
