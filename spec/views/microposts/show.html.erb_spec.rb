require 'spec_helper'

describe "microposts/show" do
  before(:each) do
    @micropost = assign(:micropost, stub_model(Micropost,
      :user_id => 1,
      :content => "MyText",
      :subject => "Subject",
      :book_code => "Book Code",
      :chapter_no => 2,
      :verse_from => 3,
      :verse_to => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(/Subject/)
    rendered.should match(/Book Code/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
  end
end
