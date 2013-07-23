require 'spec_helper'

describe "reading_plans/index" do
  before(:each) do
    assign(:reading_plans, [
      stub_model(ReadingPlan,
        :user_id => 1,
        :book_code => "Book Code",
        :read_record => "MyText"
      ),
      stub_model(ReadingPlan,
        :user_id => 1,
        :book_code => "Book Code",
        :read_record => "MyText"
      )
    ])
  end

  it "renders a list of reading_plans" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Book Code".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
