require 'spec_helper'

describe "cursoacademicos/index" do
  before(:each) do
    assign(:cursoacademicos, [
      stub_model(Cursoacademico,
        :name => "Name"
      ),
      stub_model(Cursoacademico,
        :name => "Name"
      )
    ])
  end

  it "renders a list of cursoacademicos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
