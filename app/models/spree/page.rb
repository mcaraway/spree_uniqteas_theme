class Spree::Page < ActiveRecord::Base
  attr_accessible :html, :meta_description, :meta_keywords, :name, :page_title, :permalink, :search_keywords
end
