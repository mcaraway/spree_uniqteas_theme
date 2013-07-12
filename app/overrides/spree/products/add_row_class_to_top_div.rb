Deface::Override.new(:virtual_path => "spree/products/show", 
                     :name => "add_row_class_to_top_div", 
                     :set_attributes =>  "[data-hook='product_show'], #product_show[data-hook]",
                     :attributes => { :class => "row" },
                     :original => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902')