class OrdersController < ApplicationController

  def new
    @order = Order.new
    @books = Book.order(:title)
  end

  def create
    @order = Order.new
    book = Book.find(params[:book_id])
    @order.books_id = book.id
    @order.amount = book.price
    if @order.save
      redirect_to new_charge_path(order_id: @order)
    end
  end
end
