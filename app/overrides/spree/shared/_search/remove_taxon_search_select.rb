Deface::Override.new(:virtual_path => "spree/shared/_search", 
                     :name => "remove_select", 
                     :remove => "erb[loud]:contains('select_tag :taxon')", 
                     :original => '75558c0e351bb55a748dae3078dc9b4e6abbacb0')