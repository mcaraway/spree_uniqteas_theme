class Spree::PagesController < Spree::StoreController
  before_filter :load_product, :only => :show
  rescue_from ActiveRecord::RecordNotFound, :with => :render_404
  helper 'spree/taxons'

  respond_to :html
  
  def show
    logger.debug "***** show"
    return unless @page

    logger.debug "***** show 2"
    respond_with(@page)
  end

  def load_product
    logger.debug "***** getting page " + params[:id]
    @page = Spree::Page.find_by_permalink!(params[:id])
    logger.debug "***** page = " + (@page == nil ? 'nil' : @page.name )
  end
end
