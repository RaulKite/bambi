require 'spec_helper'

describe RequestController do
  login_pepito

    def valid_params
     {
       :title => "Titulo", 
       :description => "Descripcion", 
     }
    end

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

  describe "POST 'create'" do
   it "creates a request" do
      expect {
        post :create, {:request  => valid_params}
      }.to change(Request, :count).by(1)
    end
    
    it "redirects to the created request page" do
      post :create, {:request => valid_params}
      response.should redirect_to(Request.last)
    end
  end

  describe "GET 'show'" do
    it "shows the request data" do
      request = Request.new(valid_params)
      request.owner = @pepito
      request.date = Time.now
      request.save
      get :show, {:id => request.to_param}
      assigns(:request).should eq(request)
    end
  end

end


