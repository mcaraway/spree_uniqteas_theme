Deface::Override.new(:virtual_path => "spree/taxons/show", 
                     :name => "remove_taxon_children", 
                     :remove => "[data-hook='taxon_children'], #taxon_children[data-hook]",
                     :original => '209935ff5a3c4a42be0bf9827d605b2a8d6e5902')
