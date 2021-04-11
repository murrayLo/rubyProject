class AddColumnFeeToFee < ActiveRecord::Migration[6.1]
  def change
    add_column :fees, :fee, :string
  end
end
