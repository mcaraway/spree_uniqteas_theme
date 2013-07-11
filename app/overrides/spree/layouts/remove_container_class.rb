Deface::Override.new(:virtual_path => "spree/layouts/spree_application", 
                     :name => "replace_container_class", 
                     :remove_from_attributes => "div.container", 
                     :attributes => { :class => "container" },
                     :original => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902')