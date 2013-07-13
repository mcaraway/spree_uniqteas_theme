Deface::Override.new(:virtual_path => "spree/orders/edit", 
                     :name => "change_subtotal_class", 
                     :set_attributes =>  "#subtotal",
                     :attributes => { :class => "text-right" },
                     :original => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902')
                     
Deface::Override.new(:virtual_path => "spree/orders/edit", 
                     :name => "change_cart_buttons_class", 
                     :set_attributes =>  "[data-hook='cart_buttons'], #cart_buttons[data-hook]",
                     :attributes => { :class => "text-right" },
                     :original => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902')
                     
Deface::Override.new(:virtual_path => "spree/orders/edit", 
                     :name => "change_coupon_code_class", 
                     :set_attributes =>  "div.ut-coupon-code-field",
                     :attributes => { :class => "text-right" },
                     :original => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902')