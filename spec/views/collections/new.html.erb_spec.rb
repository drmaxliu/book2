require 'spec_helper'

describe "collections/new" do
  before(:each) do
    assign(:collection, stub_model(Collection,
      :title => "MyString",
      :descriptin => "MyString",
      :book_series_id => 1
    ).as_new_record)
  end

  it "renders new collection form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => collections_path, :method => "post" do
      assert_select "input#collection_title", :name => "collection[title]"
      assert_select "input#collection_descriptin", :name => "collection[descriptin]"
      assert_select "input#collection_book_series_id", :name => "collection[book_series_id]"
    end
  end
end
