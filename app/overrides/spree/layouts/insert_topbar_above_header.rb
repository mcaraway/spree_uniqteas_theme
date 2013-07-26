Deface::Override.new(:virtual_path => "spree/layouts/spree_application", 
                     :name => "insert_topbar", 
                     :insert_before => "div.container", 
                     :partial => "spree/shared/topbar",
                     :sequence => { :after => "add_main_id_to_container" },
                     :original => '75558c0e351bb55a748dae3078dc9b4e6abbacb0')