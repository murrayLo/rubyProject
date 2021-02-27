class CreateLecturers < ActiveRecord::Migration[6.1]
  def change
    create_table :lecturers do |t|
      t.string :title
      t.string :fname
      t.string :sname
      t.string :subject

      t.timestamps
    end
  end
end
