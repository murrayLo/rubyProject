class RemoveSubjectFromLecturersAgain < ActiveRecord::Migration[6.1]
  def change
    remove_column :lecturers, :subject_id, :integer
    add_column :lecturers, :subject, :string
  end
end
