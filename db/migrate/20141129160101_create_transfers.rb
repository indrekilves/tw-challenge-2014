class CreateTransfers < ActiveRecord::Migration
  def change
    create_table :transfers do |t|
      t.string :amount
      t.string :currency
      t.string :uniqueKey
      t.string :status
      t.string :sender
      t.string :receiver

      t.timestamps
    end
  end
end
