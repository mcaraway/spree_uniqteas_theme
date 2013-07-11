Deface::Override.new(:virtual_path => "spree/shared/_head", 
                     :name => "insert_viewport_meta", 
                     :insert_after => "title", 
                     :text => "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">",
                     :original => '75558c0e351bb55a748dae3078dc9b4e6abbacb0')