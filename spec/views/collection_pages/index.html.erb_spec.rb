require 'spec_helper'

describe "collection_pages/index" do
  before(:each) do
    assign(:collection_pages, [
      stub_model(CollectionPage,
        :title => "Title",
        :description => "MyText",
        :collection_id => 1,
        :type => 2
      ),
      stub_model(CollectionPage,
        :title => "Title",
        :description => "MyText",
        :collection_id => 1,
        :type => 2
      )
    ])
  end

  it "renders a list of collection_pages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
