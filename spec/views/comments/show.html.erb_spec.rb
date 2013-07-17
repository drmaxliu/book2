require 'spec_helper'

describe "comments/show" do
  before(:each) do
    @comment = assign(:comment, stub_model(Comment,
      :chapter_id => 1,
      :verse_from => 2,
      :verse_to => 3,
      :note => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/MyText/)
  end
end
