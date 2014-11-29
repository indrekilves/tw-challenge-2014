class CreateTransfers < ActiveRecord::Migration
  def change
    create_table :transfers do |t|
      t.float :amount
      t.string :currency
      t.string :uniqueKey
      t.string :status
      t.integer :sender_id
      t.integer :receiver_id

      t.timestamps
    end
  end
end
