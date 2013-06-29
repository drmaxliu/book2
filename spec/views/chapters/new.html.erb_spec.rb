require 'spec_helper'

describe "chapters/new" do
  before(:each) do
    assign(:chapter, stub_model(Chapter,
      :title => "MyString",
      :description => "MyString",
      :book_id => 1,
      :chapter_no => 1
    ).as_new_record)
  end

  it "renders new chapter form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => chapters_path, :method => "post" do
      assert_select "input#chapter_title", :name => "chapter[title]"
      assert_select "input#chapter_description", :name => "chapter[description]"
      assert_select "input#chapter_book_id", :name => "chapter[book_id]"
      assert_select "input#chapter_chapter_no", :name => "chapter[chapter_no]"
    end
  end
end
