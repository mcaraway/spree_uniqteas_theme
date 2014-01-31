Spree::Product.class_eval do
  #attr_accessible :short_description
  
  def get_short_description
    description.gsub("<h3>Description</h3>","").gsub("<h2>Description</h2>","")
  end
  
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
  
  def lowest_price(current_currency)
    lowest = nil
    variants.each do |variant|
      if lowest == nil || variant.price < lowest.price
        lowest = variant
      end
    end
    lowest.price_in(current_currency).display_price
  end
  
  def highest_price(current_currency)
    highest = nil
    variants.each do |variant|
      if highest == nil || variant.price > highest.price
        highest = variant
      end
    end
    highest.price_in(current_currency).display_price
  end
end