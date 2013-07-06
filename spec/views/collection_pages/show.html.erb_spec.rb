require 'spec_helper'

describe "collection_pages/show" do
  before(:each) do
    @collection_page = assign(:collection_page, stub_model(CollectionPage,
      :title => "Title",
      :description => "MyText",
      :collection_id => 1,
      :type => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
