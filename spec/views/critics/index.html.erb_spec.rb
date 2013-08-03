require 'spec_helper'

describe "critics/index" do
  before(:each) do
    assign(:critics, [
      stub_model(Critic,
        :title => "Title",
        :category => "Category",
        :content => "MyText",
        :user_id => 1,
        :html_path => "Html Path"
      ),
      stub_model(Critic,
        :title => "Title",
        :category => "Category",
        :content => "MyText",
        :user_id => 1,
        :html_path => "Html Path"
      )
    ])
  end

  it "renders a list of critics" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Html Path".to_s, :count => 2
  end
end
