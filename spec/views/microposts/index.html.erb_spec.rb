require 'spec_helper'

describe "microposts/index" do
  before(:each) do
    assign(:microposts, [
      stub_model(Micropost,
        :user_id => 1,
        :content => "MyText",
        :subject => "Subject",
        :book_code => "Book Code",
        :chapter_no => 2,
        :verse_from => 3,
        :verse_to => 4
      ),
      stub_model(Micropost,
        :user_id => 1,
        :content => "MyText",
        :subject => "Subject",
        :book_code => "Book Code",
        :chapter_no => 2,
        :verse_from => 3,
        :verse_to => 4
      )
    ])
  end

  it "renders a list of microposts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "Book Code".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
