require 'spec_helper'

describe "reading_plans/show" do
  before(:each) do
    @reading_plan = assign(:reading_plan, stub_model(ReadingPlan,
      :user_id => 1,
      :book_code => "Book Code",
      :read_record => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Book Code/)
    rendered.should match(/MyText/)
  end
end
