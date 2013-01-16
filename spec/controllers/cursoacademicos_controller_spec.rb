require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe CursoacademicosController do
    login_pepito

  # This should return the minimal set of attributes required to create a valid
  # Cursoacademico. As you add validations to Cursoacademico, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "name" => "MyString" }
  end

  describe "GET index" do
    it "assigns all cursoacademicos as @cursoacademicos" do
      cursoacademico = Cursoacademico.create! valid_attributes
      get :index
      assigns(:cursoacademicos).should eq([cursoacademico])
    end
  end

  describe "GET show" do
    it "assigns the requested cursoacademico as @cursoacademico" do
      cursoacademico = Cursoacademico.create! valid_attributes
      get :show, {:id => cursoacademico.to_param}
      assigns(:cursoacademico).should eq(cursoacademico)
    end
  end

  describe "GET new" do
    it "assigns a new cursoacademico as @cursoacademico" do
      get :new
      assigns(:cursoacademico).should be_a_new(Cursoacademico)
    end
  end

  describe "GET edit" do
    it "assigns the requested cursoacademico as @cursoacademico" do
      cursoacademico = Cursoacademico.create! valid_attributes
      get :edit, {:id => cursoacademico.to_param}
      assigns(:cursoacademico).should eq(cursoacademico)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Cursoacademico" do
        expect {
          post :create, {:cursoacademico => valid_attributes}
        }.to change(Cursoacademico, :count).by(1)
      end

      it "assigns a newly created cursoacademico as @cursoacademico" do
        post :create, {:cursoacademico => valid_attributes}
        assigns(:cursoacademico).should be_a(Cursoacademico)
        assigns(:cursoacademico).should be_persisted
      end

      it "redirects to the created cursoacademico" do
        post :create, {:cursoacademico => valid_attributes}
        response.should redirect_to(Cursoacademico.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved cursoacademico as @cursoacademico" do
        # Trigger the behavior that occurs when invalid params are submitted
        Cursoacademico.any_instance.stub(:save).and_return(false)
        post :create, {:cursoacademico => { "name" => "invalid value" }}
        assigns(:cursoacademico).should be_a_new(Cursoacademico)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Cursoacademico.any_instance.stub(:save).and_return(false)
        post :create, {:cursoacademico => { "name" => "invalid value" }}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested cursoacademico" do
        cursoacademico = Cursoacademico.create! valid_attributes
        # Assuming there are no other cursoacademicos in the database, this
        # specifies that the Cursoacademico created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Cursoacademico.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => cursoacademico.to_param, :cursoacademico => { "name" => "MyString" }}
      end

      it "assigns the requested cursoacademico as @cursoacademico" do
        cursoacademico = Cursoacademico.create! valid_attributes
        put :update, {:id => cursoacademico.to_param, :cursoacademico => valid_attributes}
        assigns(:cursoacademico).should eq(cursoacademico)
      end

      it "redirects to the cursoacademico" do
        cursoacademico = Cursoacademico.create! valid_attributes
        put :update, {:id => cursoacademico.to_param, :cursoacademico => valid_attributes}
        response.should redirect_to(cursoacademico)
      end
    end

    describe "with invalid params" do
      it "assigns the cursoacademico as @cursoacademico" do
        cursoacademico = Cursoacademico.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Cursoacademico.any_instance.stub(:save).and_return(false)
        put :update, {:id => cursoacademico.to_param, :cursoacademico => { "name" => "invalid value" }}
        assigns(:cursoacademico).should eq(cursoacademico)
      end

      it "re-renders the 'edit' template" do
        cursoacademico = Cursoacademico.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Cursoacademico.any_instance.stub(:save).and_return(false)
        put :update, {:id => cursoacademico.to_param, :cursoacademico => { "name" => "invalid value" }}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested cursoacademico" do
      cursoacademico = Cursoacademico.create! valid_attributes
      expect {
        delete :destroy, {:id => cursoacademico.to_param}
      }.to change(Cursoacademico, :count).by(-1)
    end

    it "redirects to the cursoacademicos list" do
      cursoacademico = Cursoacademico.create! valid_attributes
      delete :destroy, {:id => cursoacademico.to_param}
      response.should redirect_to(cursoacademicos_url)
    end
  end

end