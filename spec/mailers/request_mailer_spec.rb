require "spec_helper"

describe RequestMailer do

  subject { RequestMailer }
  
  describe "request_created" do

    before(:each) do
      @request = stub
      @request.stub_chain(:owner, :username) {"pepito1@um.es"}
    end

    it "renders the subject" do
      subject.request_created(@request).subject.should == "Peticion creada"
    end
    it "renders the receiver email" do
      subject.request_created(@request).to.should == ['pepito1@um.es']
    end
    it "render the sender email" do
       subject.request_created(@request).from.should == ['ccalculo@um.es']
    end


  end
end

