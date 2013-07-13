Deface::Override.new(:virtual_path => "spree/checkout/edit", 
                     :name => "remove_checkout_progress", 
                     :remove =>  "[data-hook='checkout_progress'], #checkout_progress[data-hook]",
                     :original => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902')  

Deface::Override.new(:virtual_path => "spree/checkout/edit", 
                     :name => "add_checkout_progress_class", 
                     :insert_after =>  "[data-hook='checkout_header'], #checkout_header[data-hook]",
                     :text => "<div class='wizard' data-hook=\"checkout_progress\"><%= checkout_progress %></div>" ,
                     :original => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902') 