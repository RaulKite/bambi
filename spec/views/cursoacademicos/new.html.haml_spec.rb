require 'spec_helper'

describe "cursoacademicos/new" do
  before(:each) do
    assign(:cursoacademico, stub_model(Cursoacademico,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new cursoacademico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cursoacademicos_path, :method => "post" do
      assert_select "input#cursoacademico_name", :name => "cursoacademico[name]"
    end
  end
end
