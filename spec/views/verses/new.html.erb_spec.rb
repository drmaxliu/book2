require 'spec_helper'

describe "verses/new" do
  before(:each) do
    assign(:verse, stub_model(Verse,
      :verse_no => 1,
      :chapter_id => 1,
      :content_kjv => "MyString",
      :content_cuvs => "MyString",
      :content_cuvt => "MyString",
      :content_revs => "MyString",
      :content_revt => "MyString"
    ).as_new_record)
  end

  it "renders new verse form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => verses_path, :method => "post" do
      assert_select "input#verse_verse_no", :name => "verse[verse_no]"
      assert_select "input#verse_chapter_id", :name => "verse[chapter_id]"
      assert_select "input#verse_content_kjv", :name => "verse[content_kjv]"
      assert_select "input#verse_content_cuvs", :name => "verse[content_cuvs]"
      assert_select "input#verse_content_cuvt", :name => "verse[content_cuvt]"
      assert_select "input#verse_content_revs", :name => "verse[content_revs]"
      assert_select "input#verse_content_revt", :name => "verse[content_revt]"
    end
  end
end
