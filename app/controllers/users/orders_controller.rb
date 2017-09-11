class Users::OrdersController < AuthorizedUserController
  def index
    @user = current_user
    @orders = @user.orders
  end

  def show
    @user = current_user
    @order = Order.find(params[:id])
  end

  def checkout
    @user = current_user
  end
end
