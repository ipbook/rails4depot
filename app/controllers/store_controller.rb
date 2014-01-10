class StoreController < ApplicationController
  skip_before_action :authoriz
  include CurrentCart
  before_action :set_cart

  def index
   @products = Product.order(:title)
  end
end
