Deface::Override.new(:virtual_path => "spree/products/show", 
                     :name => "replace_class_from_left", 
                     :set_attributes =>  "[data-hook='product_left_part'], #product_left_part[data-hook]",
                     :attributes => { :class => "span4" },
                     :original => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902')