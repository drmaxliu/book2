require 'spec_helper'

describe "LeadReaders" do
  describe "GET /lead_readers" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get lead_readers_path
      response.status.should be(200)
    end
  end
end
