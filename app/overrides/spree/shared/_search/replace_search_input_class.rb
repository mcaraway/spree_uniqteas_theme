Deface::Override.new(:virtual_path => "spree/shared/_search", 
                     :name => "replace_search_class", 
                     :replace => "erb[loud]:contains('search_field_tag')", 
                     :text => "<%= search_field_tag :keywords, params[:keywords], :placeholder => Spree.t(:search), :class=>\"input-medium search-query\", :style=>\"margin-top:0px;\" %>",
                     :original => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902')