require 'spec_helper'

describe "lead_readers/index" do
  before(:each) do
    assign(:lead_readers, [
      stub_model(LeadReader,
        :user_id => 1,
        :bio => "MyText",
        :follower_count => 2
      ),
      stub_model(LeadReader,
        :user_id => 1,
        :bio => "MyText",
        :follower_count => 2
      )
    ])
  end

  it "renders a list of lead_readers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
