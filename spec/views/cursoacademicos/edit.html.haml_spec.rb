require 'spec_helper'

describe "cursoacademicos/edit" do
  before(:each) do
    @cursoacademico = assign(:cursoacademico, stub_model(Cursoacademico,
      :name => "MyString"
    ))
  end

  it "renders the edit cursoacademico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cursoacademicos_path(@cursoacademico), :method => "post" do
      assert_select "input#cursoacademico_name", :name => "cursoacademico[name]"
    end
  end
end
