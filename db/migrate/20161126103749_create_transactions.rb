class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :company
      t.integer :sum
      t.integer :card_id

      t.timestamps null: false
    end
  end
end
