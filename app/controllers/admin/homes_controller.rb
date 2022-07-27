class Admin::HomesController < ApplicationController
  before_action :authenticate_admin!

def top
    # @order_details = order.order_details.all
    @orders = Order.all
end



end
