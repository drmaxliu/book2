require 'spec_helper'

describe "lead_readers/show" do
  before(:each) do
    @lead_reader = assign(:lead_reader, stub_model(LeadReader,
      :user_id => 1,
      :bio => "MyText",
      :follower_count => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(/2/)
  end
end
