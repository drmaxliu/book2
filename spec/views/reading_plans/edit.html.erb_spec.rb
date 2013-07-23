require 'spec_helper'

describe "reading_plans/edit" do
  before(:each) do
    @reading_plan = assign(:reading_plan, stub_model(ReadingPlan,
      :user_id => 1,
      :book_code => "MyString",
      :read_record => "MyText"
    ))
  end

  it "renders the edit reading_plan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reading_plans_path(@reading_plan), :method => "post" do
      assert_select "input#reading_plan_user_id", :name => "reading_plan[user_id]"
      assert_select "input#reading_plan_book_code", :name => "reading_plan[book_code]"
      assert_select "textarea#reading_plan_read_record", :name => "reading_plan[read_record]"
    end
  end
end
