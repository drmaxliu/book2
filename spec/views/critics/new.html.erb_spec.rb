require 'spec_helper'

describe "critics/new" do
  before(:each) do
    assign(:critic, stub_model(Critic,
      :title => "MyString",
      :category => "MyString",
      :content => "MyText",
      :user_id => 1,
      :html_path => "MyString"
    ).as_new_record)
  end

  it "renders new critic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => critics_path, :method => "post" do
      assert_select "input#critic_title", :name => "critic[title]"
      assert_select "input#critic_category", :name => "critic[category]"
      assert_select "textarea#critic_content", :name => "critic[content]"
      assert_select "input#critic_user_id", :name => "critic[user_id]"
      assert_select "input#critic_html_path", :name => "critic[html_path]"
    end
  end
end
