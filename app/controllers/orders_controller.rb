class OrdersController < ApplicationController
  def checkout
    order = Order.find(params[:id])
  end
end
