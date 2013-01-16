require "spec_helper"

describe PeticionsoftwaresController do
  describe "routing" do

    it "routes to #index" do
      get("/peticionsoftwares").should route_to("peticionsoftwares#index")
    end

    it "routes to #new" do
      get("/peticionsoftwares/new").should route_to("peticionsoftwares#new")
    end

    it "routes to #show" do
      get("/peticionsoftwares/1").should route_to("peticionsoftwares#show", :id => "1")
    end

    it "routes to #edit" do
      get("/peticionsoftwares/1/edit").should route_to("peticionsoftwares#edit", :id => "1")
    end

    it "routes to #create" do
      post("/peticionsoftwares").should route_to("peticionsoftwares#create")
    end

    it "routes to #update" do
      put("/peticionsoftwares/1").should route_to("peticionsoftwares#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/peticionsoftwares/1").should route_to("peticionsoftwares#destroy", :id => "1")
    end

  end
end
