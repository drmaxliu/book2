require 'spec_helper'

describe "groups/new" do
  before(:each) do
    assign(:group, stub_model(Group,
      :title => "MyString",
      :description => "MyString",
      :active => false
    ).as_new_record)
  end

  it "renders new group form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => groups_path, :method => "post" do
      assert_select "input#group_title", :name => "group[title]"
      assert_select "input#group_description", :name => "group[description]"
      assert_select "input#group_active", :name => "group[active]"
    end
  end
end
