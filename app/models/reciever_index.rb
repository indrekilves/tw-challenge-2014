class RecieverIndex < ActiveRecord::Base
  attr_accessible :bankCode, :iban, :password, :recievername, :username
end
