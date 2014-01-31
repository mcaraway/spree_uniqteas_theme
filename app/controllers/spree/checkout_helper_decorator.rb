Spree::CheckoutHelper.class_eval do
    def checkout_progress
      states = checkout_states
      items = states.map do |state|    
        text = Spree.t("order_state.#{state}").titleize

        css_classes = []
        
        badge_classes = []
        badge_classes << 'badge'
        current_index = states.index(@order.state)
        state_index = states.index(state)

        if state_index < current_index
          css_classes << 'completed'
          badge_classes << 'badge-success'
          text = link_to text, checkout_state_path(state)
        end

        css_classes << 'next' if state_index == current_index + 1
        css_classes << 'current' if state == @order.state
        css_classes << 'last' if state_index == states.length - 1
        badge_classes << 'badge-info' if state == @order.state
        badge_number = state_index + 1
        # It'd be nice to have separate classes but combining them with a dash helps out for IE6 which only sees the last class
        content_tag('li', content_tag('span', badge_number.to_s, :class => badge_classes.join(' ')) + content_tag('span', text) + content_tag('span', '', :class => 'chevron'), :class => css_classes.join('-'))
      end
      content_tag('ul', raw(items.join("\n")), :class => 'progress-steps', :id => "checkout-step-#{@order.state}")
    end  
end