Deface::Override.new(:virtual_path => "spree/products/show", 
                     :name => "replace_class_from_right", 
                     :set_attributes =>  "[data-hook='product_right_part'], #product_right_part[data-hook]",
                     :attributes => { :class => "columns <%= @product.properties.any? ? 'span8' : 'span12' %> omega" },
                     :original => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902')