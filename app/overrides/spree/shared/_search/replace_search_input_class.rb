Deface::Override.new(:virtual_path => "spree/shared/_search", 
                     :name => "replace_search_class", 
                     :replace => "code[erb-loud]:contains('search_field_tag')", 
                     :text => "<%= search_field_tag :keywords, params[:keywords], :placeholder => t(:search), :class=>\"input-medium search-query\", :style=>\"margin-top:5px;\" %>",
                     :original => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902')