Deface::Override.new(:virtual_path => "spree/layouts/spree_application", 
                     :name => "surround_wrapper_content_with_row", 
                     :surround_contents => "#wrapper", 
                     :text => "<div class=\"row\"><%= render_original %><\div>",
                     :sequence => {:after => "surround_wrapper_with_div" },
                     :original => '75558c0e351bb55a748dae3078dc9b4e6abbacb0')