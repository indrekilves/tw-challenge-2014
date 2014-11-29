class Transfer < ActiveRecord::Base
  attr_accessible :amount, :currency, :receiver_id, :sender_id, :status, :uniqueKey
end
