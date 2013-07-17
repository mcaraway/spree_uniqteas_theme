require 'spec_helper'

describe "pages/show" do
  before(:each) do
    @page = assign(:page, stub_model(Page,
      :name => "Name",
      :permalink => "Permalink",
      :html => "Html",
      :page_title => "Page Title",
      :meta_keywords => "Meta Keywords",
      :meta_description => "Meta Description",
      :search_keywords => "Search Keywords"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Permalink/)
    rendered.should match(/Html/)
    rendered.should match(/Page Title/)
    rendered.should match(/Meta Keywords/)
    rendered.should match(/Meta Description/)
    rendered.should match(/Search Keywords/)
  end
end
