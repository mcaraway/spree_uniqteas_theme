Deface::Override.new(:virtual_path => "spree/orders/edit", 
                     :name => "add_well_class_to_outside_cart_form", 
                     :set_attributes =>  "[data-hook='outside_cart_form'], #outside_cart_form[data-hook]",
                     :attributes => { :class => "well" },
                     :original => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902')