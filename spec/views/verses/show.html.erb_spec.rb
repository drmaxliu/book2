require 'spec_helper'

describe "verses/show" do
  before(:each) do
    @verse = assign(:verse, stub_model(Verse,
      :verse_no => 1,
      :chapter_id => 2,
      :content_kjv => "Content Kjv",
      :content_cuvs => "Content Cuvs",
      :content_cuvt => "Content Cuvt",
      :content_revs => "Content Revs",
      :content_revt => "Content Revt"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Content Kjv/)
    rendered.should match(/Content Cuvs/)
    rendered.should match(/Content Cuvt/)
    rendered.should match(/Content Revs/)
    rendered.should match(/Content Revt/)
  end
end
