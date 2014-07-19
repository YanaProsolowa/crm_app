class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :date_get
      t.integer :number_people

      t.references :user, index: true
      t.references :customer, index: true

      t.timestamps
    end
  end
end
