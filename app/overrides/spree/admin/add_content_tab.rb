Deface::Override.new(:virtual_path => "spree/admin/shared/_menu",
                     :name => "add_web_content_tab",
                     :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                     :text => "<%= tab(:web_content, :url => spree.admin_web_content_path, :icon => 'icon-random') %>",
                     :original => '334898j740dc3e7f924aba1ccb566e9898f73734hskk')                     