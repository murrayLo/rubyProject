class RemoveLecFromSub < ActiveRecord::Migration[6.1]
  def change
    remove_column :subjects, :lecturer, :string
  end
end
