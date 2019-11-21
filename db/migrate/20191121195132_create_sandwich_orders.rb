class CreateSandwichOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :sandwich_orders do |t|
      t.references :order, foreign_key: true
      t.references :sandwich, foreign_key: true
      t.decimal :price
      t.string :comment

      t.timestamps
    end
  end
end
