class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.integer :consumer_id
      t.integer :vendor_id
      t.timestamps
    end
  end
end
