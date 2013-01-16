require "spec_helper"

describe CursoacademicosController do
  describe "routing" do

    it "routes to #index" do
      get("/cursoacademicos").should route_to("cursoacademicos#index")
    end

    it "routes to #new" do
      get("/cursoacademicos/new").should route_to("cursoacademicos#new")
    end

    it "routes to #show" do
      get("/cursoacademicos/1").should route_to("cursoacademicos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cursoacademicos/1/edit").should route_to("cursoacademicos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cursoacademicos").should route_to("cursoacademicos#create")
    end

    it "routes to #update" do
      put("/cursoacademicos/1").should route_to("cursoacademicos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cursoacademicos/1").should route_to("cursoacademicos#destroy", :id => "1")
    end

  end
end
