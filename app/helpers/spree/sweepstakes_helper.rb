module Spree::SweepstakesHelper
  def get_name(sweepstake)
    product = sweepstake.products[0]
    product == nil ? 'Unknown' : product.name
  end
  
  def get_description(sweepstake)
    product = sweepstake.products[0]
    product == nil ? 'Unknown' : product.description
  end
  
  def get_url(sweepstake)
    product = sweepstake.products[0]
    product == nil ? 'Unknown' : product_path(product)
  end
  
  def get_image(sweepstake)
    product = sweepstake.products[0]
    product == nil ? 'Unknown' : product.images.first.attachment.url(:small)
  end
end
