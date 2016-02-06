class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :ticket
      t.string :description
      t.string :address
      t.integer :price
      t.float :longitude
      t.float :latitude
      t.boolean :availability, default: true

      t.timestamps null: false
    end
  end
end
