Deface::Override.new(:virtual_path => "spree/checkout/edit", 
                     :name => "change_checkout_class", 
                     :set_attributes =>  "#checkout",
                     :attributes => { :class => "" },
                     :original => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902')

Deface::Override.new(:virtual_path => "spree/checkout/edit", 
                     :name => "change_checkout_content_class", 
                     :set_attributes =>  "[data-hook='checkout_content'], #checkout_content[data-hook]",
                     :attributes => { :class => "row margin-top" },
                     :original => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902')
                     
Deface::Override.new(:virtual_path => "spree/checkout/edit", 
                     :name => "change_checkout_title_class", 
                     :set_attributes =>  "[data-hook='checkout_title'], #checkout_title[data-hook]",
                     :attributes => { :class => "span16" },
                     :original => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902')   

Deface::Override.new(:virtual_path => "spree/checkout/edit", 
                     :name => "change_checkout_form_wrapper_class", 
                     :set_attributes =>  "[data-hook='checkout_form_wrapper'], #checkout_form_wrapper[data-hook]",
                     :attributes => { :class => "<%= if @order.state != 'confirm' then 'span12' else 'span16' end %>" },
                     :original => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902')      

Deface::Override.new(:virtual_path => "spree/checkout/edit", 
                     :name => "change_checkout_summary_box_class", 
                     :set_attributes =>  "[data-hook='checkout_summary_box'], #checkout_summary_box[data-hook]",
                     :attributes => { :class => "span4" },
                     :original => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902')                   