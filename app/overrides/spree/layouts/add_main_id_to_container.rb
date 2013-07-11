Deface::Override.new(:virtual_path => "spree/layouts/spree_application", 
                     :name => "add_main_id_to_container", 
                     :add_to_attributes => "div.container", 
                     :attributes => { :id => "main"},
                     :original => '75558c0e351bb55a748dae3078dc9b4e6abbacb0')