Deface::Override.new(:virtual_path => "spree/layouts/spree_application", 
                     :name => "insert_subheader", 
                     :insert_before => "#wrapper",
                     :text => "<div id=\"subheader\"><div class=\"container\"><div class=\"subheader-wrapper\"><%= yield :subheader %></div></div></div>",
                     :original => '75558c0e351bb55a748dae3078dc9b4e6abbacb0')

  
