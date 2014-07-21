class AddHstoreToOrders < ActiveRecord::Migration
  def up
    add_column :orders, :data, :hstore
  end

  def down
    remove_column :orders, :data
  end
end
