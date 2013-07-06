require 'spec_helper'

describe "book_pages/index" do
  before(:each) do
    assign(:book_pages, [
      stub_model(BookPage,
        :title => "Title",
        :description => "MyText",
        :book_id => 1,
        :type => 2
      ),
      stub_model(BookPage,
        :title => "Title",
        :description => "MyText",
        :book_id => 1,
        :type => 2
      )
    ])
  end

  it "renders a list of book_pages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
