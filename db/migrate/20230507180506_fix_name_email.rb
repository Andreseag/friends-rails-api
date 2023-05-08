class FixNameEmail < ActiveRecord::Migration[7.0]
  def change
    rename_column :friends, :emial, :email
  end
end
