require 'spec_helper'

describe "verses/index" do
  before(:each) do
    assign(:verses, [
      stub_model(Verse,
        :verse_no => 1,
        :chapter_id => 2,
        :content_kjv => "Content Kjv",
        :content_cuvs => "Content Cuvs",
        :content_cuvt => "Content Cuvt",
        :content_revs => "Content Revs",
        :content_revt => "Content Revt"
      ),
      stub_model(Verse,
        :verse_no => 1,
        :chapter_id => 2,
        :content_kjv => "Content Kjv",
        :content_cuvs => "Content Cuvs",
        :content_cuvt => "Content Cuvt",
        :content_revs => "Content Revs",
        :content_revt => "Content Revt"
      )
    ])
  end

  it "renders a list of verses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Content Kjv".to_s, :count => 2
    assert_select "tr>td", :text => "Content Cuvs".to_s, :count => 2
    assert_select "tr>td", :text => "Content Cuvt".to_s, :count => 2
    assert_select "tr>td", :text => "Content Revs".to_s, :count => 2
    assert_select "tr>td", :text => "Content Revt".to_s, :count => 2
  end
end
