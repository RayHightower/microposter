require 'spec_helper'

describe "jackrabbits/new.html.erb" do
  before(:each) do
    assign(:jackrabbit, stub_model(Jackrabbit).as_new_record)
  end

  it "renders new jackrabbit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => jackrabbits_path, :method => "post" do
    end
  end
end
