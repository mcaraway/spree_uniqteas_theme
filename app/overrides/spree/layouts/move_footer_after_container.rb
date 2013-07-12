Deface::Override.new(:virtual_path => "spree/layouts/spree_application", 
                     :name => "remove_footer", 
                     :remove => "code[erb-loud]:contains('footer')", 
                     :sequence => { :after => "add_main_id_to_container" },
                     :original => '75558c0e351bb55a748dae3078dc9b4e6abbacb0')
                     
Deface::Override.new(:virtual_path => "spree/layouts/spree_application", 
                     :name => "add_footer", 
                     :insert_bottom => "body", 
                     :partial => "spree/shared/footer",
                     :sequence => { :after => "remove_footer" },
                     :original => '75558c0e351bb55a748dae3078dc9b4e6abbacb0')