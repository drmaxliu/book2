require 'spec_helper'

describe "critics/show" do
  before(:each) do
    @critic = assign(:critic, stub_model(Critic,
      :title => "Title",
      :category => "Category",
      :content => "MyText",
      :user_id => 1,
      :html_path => "Html Path"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Category/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/Html Path/)
  end
end
