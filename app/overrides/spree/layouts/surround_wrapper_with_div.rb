Deface::Override.new(:virtual_path => "spree/layouts/spree_application", 
                     :name => "surround_wrapper_with_div", 
                     :surround => "#wrapper", 
                     :text => "<div class=\"main_wrapper\"><%= render_original %><\div>",
                     :sequence => {:after => "insert_topbar" },
                     :original => '75558c0e351bb55a748dae3078dc9b4e6abbacb0')