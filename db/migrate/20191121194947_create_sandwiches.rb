class CreateSandwiches < ActiveRecord::Migration[5.2]
  def change
    create_table :sandwiches do |t|
      t.string :name
      t.string :category
      t.decimal :price

      t.timestamps
    end
  end
end
