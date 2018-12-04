class CreateQuotations < ActiveRecord::Migration[5.2]
  def change
    create_table :quotations do |t|
      t.string :quote
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
