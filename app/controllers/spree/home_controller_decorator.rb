Spree::HomeController.class_eval do
  def index
    @top_promo = Spree::HomePageSlider.where(:location => 'top')
    @bottom_promo = Spree::HomePageSlider.where(:location => 'bottom')
    @sweepstakes = Spree::Sweepstake.all.reject(&:expired?)

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
