Spree::Product.class_eval do
  def on_promotion?
    on_promotion = false
    promotions = Spree::Promotion.advertised
    promotions.each do |promo|
      # see if this products is on any promotion with a product rule
      if (promo.products.include?(self))
        on_promotion = true
      end
      
      # if there is no product rule then it is still on this promotion
      on_product_rule = lambda { |r| (r.class.name.demodulize == 'product' ? false : true ) }
      on_promotion ||= promo.rules.any?(&on_product_rule)

    end
    on_promotion
  end
  
  def new?
    (Date.today - available_on.to_date).to_i < 30
  end
end