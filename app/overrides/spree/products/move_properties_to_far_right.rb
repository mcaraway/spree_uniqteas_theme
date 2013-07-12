Deface::Override.new(:virtual_path => "spree/products/show", 
                     :name => "remove_properties", 
                     :remove => "[data-hook='product_properties'], #product_properties[data-hook]",
                     :original => '75558c0e351bb55a748dae3078dc9b4e6abbacb0')

Deface::Override.new(:virtual_path => "spree/products/show", 
                     :name => "add_properties_after_right", 
                     :insert_bottom => "[data-hook='product_show'], #product_show[data-hook]", 
                     :text => "<div class=\"span4\" data-hook=\"product_properties\"><%= render :partial => 'properties' %></div>",
                     :sequence => { :after => "remove_properties" },
                     :original => '75558c0e351bb55a748dae3078dc9b4e6abbacb0')
