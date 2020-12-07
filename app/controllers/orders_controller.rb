class OrdersController < ApplicationController


  def new
    @order = Order.new
  end

  def create


    authorize current_user
    event = Event.find(params[:event_id])
    order = Order.create!(
      event: event,
      event_title: event.title,
      amount: params[:amount_cents].to_i,
      state: 'pending',
      user: current_user
      )

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: event.title,
        images: [event.photo.key],
        amount: params[:amount_cents].to_i,
        currency: 'jpy',
        quantity: 1
      }],
      success_url: order_url(order),
      cancel_url: order_url(order)
    )

    order.update(checkout_session_id: session.id)
    #redirect_to new_order_payment_path(order)
    @order = Order.last


  end

  def show
    authorize current_user
		@order = current_user.orders.find(params[:id])
		@event = @order.event
  end
end
