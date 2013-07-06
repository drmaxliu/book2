require "spec_helper"

describe BookPagesController do
  describe "routing" do

    it "routes to #index" do
      get("/book_pages").should route_to("book_pages#index")
    end

    it "routes to #new" do
      get("/book_pages/new").should route_to("book_pages#new")
    end

    it "routes to #show" do
      get("/book_pages/1").should route_to("book_pages#show", :id => "1")
    end

    it "routes to #edit" do
      get("/book_pages/1/edit").should route_to("book_pages#edit", :id => "1")
    end

    it "routes to #create" do
      post("/book_pages").should route_to("book_pages#create")
    end

    it "routes to #update" do
      put("/book_pages/1").should route_to("book_pages#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/book_pages/1").should route_to("book_pages#destroy", :id => "1")
    end

  end
end
