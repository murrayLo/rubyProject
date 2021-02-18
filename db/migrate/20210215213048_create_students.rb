class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :fname
      t.string :sname
      t.string :course

      t.timestamps
    end
  end
end
