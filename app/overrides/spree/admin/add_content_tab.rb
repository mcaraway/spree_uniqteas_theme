Deface::Override.new(:virtual_path => "spree/layouts/admin",
                     :name => "content_tabs",
                     :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                     :text => "<%= tab(:web_content, :url => spree.admin_web_content_path, :icon => 'icon-random') %>",
                     :disabled => false,
                     :original => '3e847740dc3e7f924aba1ccb566e9898f73734hskk')