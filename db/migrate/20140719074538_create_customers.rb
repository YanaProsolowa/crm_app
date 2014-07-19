class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string  :name
      t.string  :otch
      t.string  :surname
      t.string  :gender
      t.integer :age
      t.string  :phone_number
      t.string  :email
      t.integer :passport_series
      t.integer :passport_number
      t.string  :driver_series
      t.integer :driver_number
      t.integer :year_get

      t.timestamps
    end
  end
end
