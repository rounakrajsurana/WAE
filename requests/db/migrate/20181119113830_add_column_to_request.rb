class AddColumnToRequest < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :nature, :string
  end
end
