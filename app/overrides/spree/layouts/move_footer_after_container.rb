Deface::Override.new(:virtual_path => "spree/layouts/spree_application", 
                     :name => "remove_footer", 
                     :remove => "code[erb-loud]:contains('spree/shared/footer')", 
                     :sequence => {:after => "surround_wrapper_content_with_row" },
                     :original => '75558c0e351bb55a748dae3078dc9b4e6abbacb0')

Deface::Override.new(:virtual_path => "spree/layouts/spree_application", 
                     :name => "add_footer_below_container", 
                     :insert_bottom => "body", 
                     :text => "<%= render :partial => 'spree/shared/footer' %>",
                     :sequence => {:after => "remove_footer" },
                     :original => '75558c0e351bb55a748dae3078dc9b4e6abbacb0')
