require 'spec_helper'

describe RequestObserver do

  subject { RequestObserver.instance }

  it "acts on the after_create notification" do
      subject.should_receive(:after_create)
      Request.create!(:title => "titulo", :description => "desc", :owner => FactoryGirl.create(:user), :date=> Time.now)
  end

  it "send an email when a request is created" do
    RequestMailer.should_receive(:request_created).and_return(double("mailer", :deliver => true))
    request = Request.create!(:title => "titulo", :description => "desc", :owner => FactoryGirl.create(:user), :date=> Time.now)
    #RequestMailer.should_receive(:request_created).with(request)
  end


end
