class CreateFavoriteSandwich < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_sandwiches do |t|
      t.references :user, foreign_key: true
      t.references :sandwich, foreign_key: true

      t.timestamps
    end
  end
end
