class AddReceiptToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :receipt, :string
  end
end
