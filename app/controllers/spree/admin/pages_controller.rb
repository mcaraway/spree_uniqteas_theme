class Spree::Admin::PagesController < Spree::Admin::ResourceController
  before_filter :load_data, :except => :index
  def index
    @pages = Spree::Page.all
  end

  protected

  def location_after_save
    if @page.created_at == @page.updated_at
      edit_admin_page_url(@page)
    else
      edit_admin_page_url(@page)
    end
  end

  def load_data
  end  
end
