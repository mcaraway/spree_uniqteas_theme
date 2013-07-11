Deface::Override.new(:virtual_path => "spree/products/show", 
                     :name => "remove_row_class_from_left", 
                     :remove_from_attributes =>  "[data-hook='product_left_part_wrap'], #product_left_part_wrap[data-hook]",
                     :attributes => { :class => "row" },
                     :original => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902')
                    
Deface::Override.new(:virtual_path => "spree/products/show", 
                     :name => "remove_row_class_from_right", 
                     :set_attributes =>  "[data-hook='product_right_part_wrap'], #product_right_part_wrap[data-hook]",
                     :attributes => { :class => "well" },
                     :original => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902')