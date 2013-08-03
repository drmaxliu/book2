require 'spec_helper'

describe "lead_readers/new" do
  before(:each) do
    assign(:lead_reader, stub_model(LeadReader,
      :user_id => 1,
      :bio => "MyText",
      :follower_count => 1
    ).as_new_record)
  end

  it "renders new lead_reader form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lead_readers_path, :method => "post" do
      assert_select "input#lead_reader_user_id", :name => "lead_reader[user_id]"
      assert_select "textarea#lead_reader_bio", :name => "lead_reader[bio]"
      assert_select "input#lead_reader_follower_count", :name => "lead_reader[follower_count]"
    end
  end
end
