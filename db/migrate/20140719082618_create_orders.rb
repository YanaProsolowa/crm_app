class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :type

      t.references :user, index: true
      t.references :customer, index: true

      t.timestamps
    end
  end
end
