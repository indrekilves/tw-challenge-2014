class CreateRecieverIndices < ActiveRecord::Migration
  def change
    create_table :reciever_indices do |t|
      t.string :username
      t.string :password
      t.string :recievername
      t.string :iban
      t.string :bankCode

      t.timestamps
    end
  end
end
