class CreateFriends < ActiveRecord::Migration[7.0]
  def change
    create_table :friends do |t|
      t.string :name
      t.integer :phone
      t.string :twitter
      t.string :emial
      t.string :location

      t.timestamps
    end
  end
end
