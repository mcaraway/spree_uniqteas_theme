Deface::Override.new(:virtual_path => "spree/shared/_sidebar", 
                     :name => "replace_sidebar_class", 
                     :set_attributes => "#sidebar", 
                     :attributes => { :class => "span4"},
                     :original => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902')
                     
Deface::Override.new(:virtual_path => "spree/shared/_sidebar", 
                     :name => "surround_sidebar_class", 
                     :surround_contents => "#sidebar", 
                     :text => "<div class='well'><%= render_original %></div>",
                     :original => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902')