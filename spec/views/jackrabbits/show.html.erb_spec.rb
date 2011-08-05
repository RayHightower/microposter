require 'spec_helper'

describe "jackrabbits/show.html.erb" do
  before(:each) do
    @jackrabbit = assign(:jackrabbit, stub_model(Jackrabbit))
  end

  it "renders attributes in <p>" do
    render
  end
end
