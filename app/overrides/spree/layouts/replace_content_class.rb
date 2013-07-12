Deface::Override.new(:virtual_path => "spree/layouts/spree_application", 
                     :name => "replace_content_class", 
                     :replace => "#content", 
                     :text => "<div id=\"content\" class=\"<%= !content_for?(:sidebar) ? \"span16\" : \"span12\" %>\" data-hook><%= flash_messages %><%= yield %></div>",
                     :original => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902')