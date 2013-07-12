Deface::Override.new(:virtual_path => "spree/users/show", 
                     :name => "surround_orders_with_well", 
                     :surround =>  "table.order-summary",
                     :text => "<div class='well'><%= render_original %><\div>",
                     :original => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902')