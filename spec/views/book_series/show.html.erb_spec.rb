require 'spec_helper'

describe "book_series/show" do
  before(:each) do
    @book_series = assign(:book_series, stub_model(BookSeries,
      :title => "Title",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Description/)
  end
end
