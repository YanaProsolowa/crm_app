class CreateAutos < ActiveRecord::Migration
  def change
    create_table :autos do |t|
      t.datetime :release_date
      t.integer :cost
      t.integer :number_people
      t.integer :min_age
      t.integer :min_experience

      t.references :model, index: true
      t.references :region, index: true
      t.timestamps
    end
  end
end
