Deface::Override.new(:virtual_path => "spree/layouts/spree_application", 
                     :name => "insert_facebook_scripts", 
                     :insert_bottom => "head",
                     :partial => "spree/layouts/facebook_scripts",
                     :original => '75558c0e351bb55a748dae3078dc9b4e6abbacb0')