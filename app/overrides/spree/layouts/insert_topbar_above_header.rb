Deface::Override.new(:virtual_path => "spree/layouts/spree_application", 
                     :name => "insert_topbar", 
                     :insert_top => "body", 
                     :partial => "spree/shared/topbar",
                     :sequence => {:after => "replace_container_class" },
                     :original => '75558c0e351bb55a748dae3078dc9b4e6abbacb0')