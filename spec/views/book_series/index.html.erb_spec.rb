require 'spec_helper'

describe "book_series/index" do
  before(:each) do
    assign(:book_series, [
      stub_model(BookSeries,
        :title => "Title",
        :description => "Description"
      ),
      stub_model(BookSeries,
        :title => "Title",
        :description => "Description"
      )
    ])
  end

  it "renders a list of book_series" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
