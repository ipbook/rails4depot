class Order < ActiveRecord::Base
  has_many :line_items, dependent: :destroy
  NAME_SIZE = 41
  PAYMENT_TYPES = [ "Check", "Credit card", "Purchase order" ] #? how about a value-txt
  
  validates :name, :address, :email, presence: true
  validates :pay_type, inclusion: PAYMENT_TYPES
  
  def add_line_items_from_cart(cart)
    cart.line_items.each do |item| 
      item.cart_id = nil # remove useless attribute(cart_id) before add item into order-instance-object
      # First we set the  cart_id to  nil in order to prevent the item from going poof when we destroy the cart.
      
      line_items << item # means item append to this.line_items?  i think yes.
    end
  end
  
end
