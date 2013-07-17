Deface::Override.new(:virtual_path => "spree/taxons/show", 
                     :name => "insert_taxon_header", 
                     :insert_before => "[data-hook='taxon_products'], #taxon_products[data-hook]",
                     :partial => 'spree/shared/taxon_header',
                     :original => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902')