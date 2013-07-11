Deface::Override.new(:virtual_path => "spree/layouts/spree_application", 
                     :name => "insert_top_promo", 
                     :insert_before => "div#wrapper",
                     :partial => "spree/home/top_promo",
                     :sequence => {:after => "replace_container_class" },
                     :original => '75558c0e351bb55a748dae3078dc9b4e6abbacb0')