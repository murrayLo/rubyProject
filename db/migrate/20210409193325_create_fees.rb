class CreateFees < ActiveRecord::Migration[6.1]
  def change
    create_table :fees do |t|
      t.string :coursetitle
      t.decimal :yearlyfee

      t.timestamps
    end
  end
end
