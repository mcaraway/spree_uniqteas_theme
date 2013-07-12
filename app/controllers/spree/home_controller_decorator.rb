Spree::HomeController.class_eval do
  def index
    @home_page_sliders = Spree::HomePageSlider.all

    featured = Spree::Taxon.where(:name => 'Featured').first
    @featured_products = featured.products.active.limit(12) if featured

    latest = Spree::Taxon.where(:name => 'Latest').first
    @latest_products = latest.products.active.limit(12) if latest

    @promotions = Spree::Promotion.advertised

    @searcher = Spree::Config.searcher_class.new(params)
    @searcher.current_user = try_spree_current_user
    @searcher.current_currency = current_currency
    @products = @searcher.retrieve_products
    respond_with(@products)
  end

end