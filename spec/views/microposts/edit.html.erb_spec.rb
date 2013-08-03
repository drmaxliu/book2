require 'spec_helper'

describe "microposts/edit" do
  before(:each) do
    @micropost = assign(:micropost, stub_model(Micropost,
      :user_id => 1,
      :content => "MyText",
      :subject => "MyString",
      :book_code => "MyString",
      :chapter_no => 1,
      :verse_from => 1,
      :verse_to => 1
    ))
  end

  it "renders the edit micropost form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => microposts_path(@micropost), :method => "post" do
      assert_select "input#micropost_user_id", :name => "micropost[user_id]"
      assert_select "textarea#micropost_content", :name => "micropost[content]"
      assert_select "input#micropost_subject", :name => "micropost[subject]"
      assert_select "input#micropost_book_code", :name => "micropost[book_code]"
      assert_select "input#micropost_chapter_no", :name => "micropost[chapter_no]"
      assert_select "input#micropost_verse_from", :name => "micropost[verse_from]"
      assert_select "input#micropost_verse_to", :name => "micropost[verse_to]"
    end
  end
end
