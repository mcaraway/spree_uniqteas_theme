Deface::Override.new(:virtual_path => "spree/products/_cart_form", 
                     :name => "remove_class_from_product_price", 
                     :set_attributes =>  "[data-hook='product_price'], #product_price[data-hook]",
                     :attributes => { :class => "" },
                     :sequence => { :before => "remove_properties" },
                     :original => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902')
                    
Deface::Override.new(:virtual_path => "spree/products/_taxons", 
                     :name => "remove_class_from_taxon_crumbs", 
                     :set_attributes =>  "#taxon-crumbs",
                     :attributes => { :class => "" },
                     :original => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902')