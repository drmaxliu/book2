require 'spec_helper'

describe "book_series/new" do
  before(:each) do
    assign(:book_series, stub_model(BookSeries,
      :title => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new book_series form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => book_series_index_path, :method => "post" do
      assert_select "input#book_series_title", :name => "book_series[title]"
      assert_select "input#book_series_description", :name => "book_series[description]"
    end
  end
end
