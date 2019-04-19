class ChargesController < ApplicationController

  rescue_from Stripe::CardError, with: :catch_exception
  before_action :find_order, only: [:new, :create]
  
  def new
    
  end

  def create
    user = User.first
    StripeChargesServices.new(charges_params, user).call
    redirect_to new_charge_path(order_id: @order)
  end

  private

  def find_order
    @order = Order.find(params[:order_id])
  end

  def charges_params
    params.permit(:stripeEmail, :stripeToken, :order_id)
  end

  def catch_exception(exception)
    flash[:error] = exception.message
  end
  
end
