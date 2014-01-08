class Order < ActiveRecord::Base
  NAME_SIZE = 41
  PAYMENT_TYPES = [ "Check", "Credit card", "Purchase order" ]
end
