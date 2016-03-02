Spree::Order.class_eval do

  include Spree::Order::Checkout

  checkout_flow  do
    go_to_state :single_step_checkout
    go_to_state :complete
  end

end
