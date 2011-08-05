require 'spec_helper'

describe "Jackrabbits" do
  describe "GET /jackrabbits" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get jackrabbits_path
      response.status.should be(200)
    end
  end
end
