require 'spec_helper'

describe "pages/index" do
  before(:each) do
    assign(:pages, [
      stub_model(Page,
        :name => "Name",
        :permalink => "Permalink",
        :html => "Html",
        :page_title => "Page Title",
        :meta_keywords => "Meta Keywords",
        :meta_description => "Meta Description",
        :search_keywords => "Search Keywords"
      ),
      stub_model(Page,
        :name => "Name",
        :permalink => "Permalink",
        :html => "Html",
        :page_title => "Page Title",
        :meta_keywords => "Meta Keywords",
        :meta_description => "Meta Description",
        :search_keywords => "Search Keywords"
      )
    ])
  end

  it "renders a list of pages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Permalink".to_s, :count => 2
    assert_select "tr>td", :text => "Html".to_s, :count => 2
    assert_select "tr>td", :text => "Page Title".to_s, :count => 2
    assert_select "tr>td", :text => "Meta Keywords".to_s, :count => 2
    assert_select "tr>td", :text => "Meta Description".to_s, :count => 2
    assert_select "tr>td", :text => "Search Keywords".to_s, :count => 2
  end
end
