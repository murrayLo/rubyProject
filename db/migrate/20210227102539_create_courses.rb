class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :subject1
      t.string :subject2
      t.string :subject3
      t.string :subject4
      t.string :department

      t.timestamps
    end
  end
end
