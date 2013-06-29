require 'spec_helper'

describe "collections/edit" do
  before(:each) do
    @collection = assign(:collection, stub_model(Collection,
      :title => "MyString",
      :descriptin => "MyString",
      :book_series_id => 1
    ))
  end

  it "renders the edit collection form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => collections_path(@collection), :method => "post" do
      assert_select "input#collection_title", :name => "collection[title]"
      assert_select "input#collection_descriptin", :name => "collection[descriptin]"
      assert_select "input#collection_book_series_id", :name => "collection[book_series_id]"
    end
  end
end
