require 'spec_helper'

describe "jackrabbits/index.html.erb" do
  before(:each) do
    assign(:jackrabbits, [
      stub_model(Jackrabbit),
      stub_model(Jackrabbit)
    ])
  end

  it "renders a list of jackrabbits" do
    render
  end
end
