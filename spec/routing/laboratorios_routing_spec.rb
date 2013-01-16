require "spec_helper"

describe LaboratoriosController do
  describe "routing" do

    it "routes to #index" do
      get("/laboratorios").should route_to("laboratorios#index")
    end

    it "routes to #new" do
      get("/laboratorios/new").should route_to("laboratorios#new")
    end

    it "routes to #show" do
      get("/laboratorios/1").should route_to("laboratorios#show", :id => "1")
    end

    it "routes to #edit" do
      get("/laboratorios/1/edit").should route_to("laboratorios#edit", :id => "1")
    end

    it "routes to #create" do
      post("/laboratorios").should route_to("laboratorios#create")
    end

    it "routes to #update" do
      put("/laboratorios/1").should route_to("laboratorios#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/laboratorios/1").should route_to("laboratorios#destroy", :id => "1")
    end

  end
end
