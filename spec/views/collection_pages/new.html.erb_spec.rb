require 'spec_helper'

describe "collection_pages/new" do
  before(:each) do
    assign(:collection_page, stub_model(CollectionPage,
      :title => "MyString",
      :description => "MyText",
      :collection_id => 1,
      :type => 1
    ).as_new_record)
  end

  it "renders new collection_page form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => collection_pages_path, :method => "post" do
      assert_select "input#collection_page_title", :name => "collection_page[title]"
      assert_select "textarea#collection_page_description", :name => "collection_page[description]"
      assert_select "input#collection_page_collection_id", :name => "collection_page[collection_id]"
      assert_select "input#collection_page_type", :name => "collection_page[type]"
    end
  end
end
