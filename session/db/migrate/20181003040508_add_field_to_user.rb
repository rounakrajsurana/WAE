class AddFieldToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :creditcard, :string
    add_column :users, :isadmin, :boolean
  end
end
