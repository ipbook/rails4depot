class Order < ActiveRecord::Base
  NAME_SIZE = 41
  PAYMENT_TYPES = [ "Check", "Credit card", "Purchase order" ]
  
  validates :name, :address, :email, presence: true
  validates :pay_type, inclusion: PAYMENT_TYPES
end
