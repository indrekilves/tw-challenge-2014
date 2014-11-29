class Transfer < ActiveRecord::Base
  attr_accessible :amount, :currency, :receiver, :sender, :status, :uniqueKey
end
