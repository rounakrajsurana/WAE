class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :location
      t.text :complain
      t.boolean :open
      t.boolean :closed
      t.boolean :cancelled
      t.date :Date

      t.timestamps
    end
  end
end
