class CreateConsumers < ActiveRecord::Migration[5.1]
  def change
    create_table :consumers do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.boolean :vendorAccount

      t.timestamps
    end
  end
end
