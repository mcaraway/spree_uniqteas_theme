Deface::Override.new(:virtual_path => "spree/products/_thumbnails", 
                     :name => "replace_thumbnail_image_size", 
                     :replace => "erb[loud]:contains(':mini')", 
                     :text => "<%= link_to(image_tag(i.attachment.url(:small)), i.attachment.url(:large)) %>",
                     :original => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902')