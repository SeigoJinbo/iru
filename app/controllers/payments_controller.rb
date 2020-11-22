class PaymentsController < ApplicationController
  def new
    authorize current_user
    @order = current_user.orders.where(state: 'pending').find(params[:order_id])
  end
end
