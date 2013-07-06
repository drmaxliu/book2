require 'spec_helper'

describe "book_pages/show" do
  before(:each) do
    @book_page = assign(:book_page, stub_model(BookPage,
      :title => "Title",
      :description => "MyText",
      :book_id => 1,
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
