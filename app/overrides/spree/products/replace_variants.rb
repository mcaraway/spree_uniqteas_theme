Deface::Override.new(:virtual_path => "spree/products/_cart_form", 
                     :name => "replace_variants", 
                     :replace =>  "#product-variants",
                     :partial => 'spree/products/variants',
                     :original => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902')
