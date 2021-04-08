class CreateLecturesubjects < ActiveRecord::Migration[6.1]
  def change
    create_table :lecturesubjects do |t|
      t.integer :lecturer_id
      t.integer :subject_id

      t.timestamps
    end
  end
end
