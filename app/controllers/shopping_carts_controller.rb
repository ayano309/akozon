class ShoppingCartsController < ApplicationController
  before_action :set_cart, only: %i[index create destroy]
  def index
    @user_cart_items = ShoppingCartItem.user_cart_items(@user_cart)
  end

  def show
    @cart = ShoppingCart.find(user_id: current_user)
  end
  
  private
    def set_cart
      @user_cart = ShoppingCart.set_user_cart(current_user)
    end
end
