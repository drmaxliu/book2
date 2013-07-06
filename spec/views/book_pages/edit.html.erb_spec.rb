require 'spec_helper'

describe "book_pages/edit" do
  before(:each) do
    @book_page = assign(:book_page, stub_model(BookPage,
      :title => "MyString",
      :description => "MyText",
      :book_id => 1,
      :type => 1
    ))
  end

  it "renders the edit book_page form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => book_pages_path(@book_page), :method => "post" do
      assert_select "input#book_page_title", :name => "book_page[title]"
      assert_select "textarea#book_page_description", :name => "book_page[description]"
      assert_select "input#book_page_book_id", :name => "book_page[book_id]"
      assert_select "input#book_page_type", :name => "book_page[type]"
    end
  end
end
