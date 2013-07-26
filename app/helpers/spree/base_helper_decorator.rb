Spree::BaseHelper.class_eval do
  def get_name(sweepstake)
    product = sweepstake.products[0]
    product == nil ? 'Unknown' : product.name
  end
  
  def get_url(sweepstake)
    product = sweepstake.products[0]
    product == nil ? 'Unknown' : URI.join(request.url, product_path(product))
  end
  
  def get_image(sweepstake)
    product = sweepstake.products[0]
    product == nil ? 'Unknown' : URI.join(request.url, product.images.first.attachment.url)
  end
  def logo(image_path=Spree::Config[:logo])
    link_to image_tag(image_path), root_path, :class=> "brand"
  end
  def get_auth
    user = Spree::User.where(:email => 'api@uniqteas.com').first
    user == nil ? 'missing' : user.spree_api_key
  end
  
  def get_weekly_drawing_link(sweepstake)
    name = get_name(sweepstake)
    link = content_tag :a, :href => "#", :class => "btn btn-primary", :onclick => "weeklyPick('/', '#{get_name(sweepstake)}', '#{sweepstake.description}', '#{get_url(sweepstake)}', '#{get_image(sweepstake)}', '#{sweepstake.id}', '#{get_auth}');return false;" do
      content_tag :span, "enter giveaway >>"
    end
    link.html_safe
  end
end