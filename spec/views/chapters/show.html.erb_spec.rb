require 'spec_helper'

describe "chapters/show" do
  before(:each) do
    @chapter = assign(:chapter, stub_model(Chapter,
      :title => "Title",
      :description => "Description",
      :book_id => 1,
      :chapter_no => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Description/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
