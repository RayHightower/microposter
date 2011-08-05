require 'spec_helper'

describe "jackrabbits/edit.html.erb" do
  before(:each) do
    @jackrabbit = assign(:jackrabbit, stub_model(Jackrabbit))
  end

  it "renders the edit jackrabbit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => jackrabbits_path(@jackrabbit), :method => "post" do
    end
  end
end
