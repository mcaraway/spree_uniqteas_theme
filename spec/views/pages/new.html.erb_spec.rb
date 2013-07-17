require 'spec_helper'

describe "pages/new" do
  before(:each) do
    assign(:page, stub_model(Page,
      :name => "MyString",
      :permalink => "MyString",
      :html => "MyString",
      :page_title => "MyString",
      :meta_keywords => "MyString",
      :meta_description => "MyString",
      :search_keywords => "MyString"
    ).as_new_record)
  end

  it "renders new page form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pages_path, "post" do
      assert_select "input#page_name[name=?]", "page[name]"
      assert_select "input#page_permalink[name=?]", "page[permalink]"
      assert_select "input#page_html[name=?]", "page[html]"
      assert_select "input#page_page_title[name=?]", "page[page_title]"
      assert_select "input#page_meta_keywords[name=?]", "page[meta_keywords]"
      assert_select "input#page_meta_description[name=?]", "page[meta_description]"
      assert_select "input#page_search_keywords[name=?]", "page[search_keywords]"
    end
  end
end
