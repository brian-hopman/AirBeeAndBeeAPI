class CreateVendors < ActiveRecord::Migration[5.1]
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :apiary_image
      t.string :description

      t.timestamps
    end
  end
end
