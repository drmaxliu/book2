require 'spec_helper'

describe "comments/new" do
  before(:each) do
    assign(:comment, stub_model(Comment,
      :chapter_id => 1,
      :verse_from => 1,
      :verse_to => 1,
      :note => "MyText"
    ).as_new_record)
  end

  it "renders new comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => comments_path, :method => "post" do
      assert_select "input#comment_chapter_id", :name => "comment[chapter_id]"
      assert_select "input#comment_verse_from", :name => "comment[verse_from]"
      assert_select "input#comment_verse_to", :name => "comment[verse_to]"
      assert_select "textarea#comment_note", :name => "comment[note]"
    end
  end
end
