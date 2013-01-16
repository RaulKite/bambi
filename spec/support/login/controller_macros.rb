module ControllerMacros
  def login_pepito
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      @pepito = FactoryGirl.create(:user)
      sign_in @pepito
    end
  end
end
