Deface::Override.new(:virtual_path => "spree/checkout/edit", 
                     :name => "checkout_form_wrapper_well", 
                     :surround_contents =>  "[data-hook='checkout_form_wrapper'], #checkout_form_wrapper[data-hook]",
                     :text => "<div class='well'><%= render_original %><\div>",
                     :original => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902') 
                     
Deface::Override.new(:virtual_path => "spree/checkout/edit", 
                     :name => "checkout_summary_box_well", 
                     :surround_contents =>  "[data-hook='checkout_summary_box'], #checkout_summary_box[data-hook]",
                     :text => "<div class='well'><%= render_original %><\div>",
                     :original => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902') 