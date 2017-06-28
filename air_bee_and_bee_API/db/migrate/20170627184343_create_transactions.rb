class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|

      t.integer :total
      t.integer :consumer_id
      t.integer :vendor_id
      t.integer :product_id

      t.timestamps
    end
  end
end
