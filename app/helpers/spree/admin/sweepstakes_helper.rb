module Spree::Admin::SweepstakesHelper
  def products_options_for(sweepstake)
    products = Spree::Product.where("user_id is null")
    options = products.map do |product|
      selected = sweepstake.products.include?(product)
      content_tag(:option,
                  :value    => product.id,
                  :selected => ('selected' if selected)) do
        product.name
      end
    end.join("").html_safe
  end
end
