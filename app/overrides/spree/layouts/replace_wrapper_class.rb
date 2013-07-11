Deface::Override.new(:virtual_path => "spree/layouts/spree_application", 
                     :name => "remove_class_from_wrapper", 
                     :remove_from_attributes => "div#wrapper", 
                     :attributes => { :class => "row" },
                     :sequence => {:after => "replace_container_class" },
                     :original => '75558c0e351bb55a748dae3078dc9b4e6abbacb0')
                
Deface::Override.new(:virtual_path => "spree/layouts/spree_application", 
                     :name => "add_class_from_wrapper", 
                     :add_to_attributes => "div#wrapper", 
                     :attributes => { :class => "container" },
                     :sequence => {:after => "replace_container_class" },
                     :original => '75558c0e351bb55a748dae3078dc9b4e6abbacb0')