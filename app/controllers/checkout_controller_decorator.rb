Spree::CheckoutController.class_eval do

  def before_single_step_checkout
    # if the user has a default address, a callback takes care of setting
    # that; but if he doesn't, we need to build an empty one here
    # debugger
    @order.bill_address ||= Spree::Address.default(@order.user)
    @order.ship_address ||= Spree::Address.default(@order.user, 'ship')
  #   if @order.shipments.empty?
  #     @order.create_proposed_shipments
  #   end
  #   @order.create_tax_charge!
  #   @order.assign_default_credit_card
  #   packages = @order.shipments.map(&:to_package)
  #   @differentiator = Spree::Stock::Differentiator.new(@order, packages)
  #   @differentiator.missing.each do |variant, quantity|
  #     @order.contents.remove(variant, quantity)
  #   end
  #   @order.save
  end

end
