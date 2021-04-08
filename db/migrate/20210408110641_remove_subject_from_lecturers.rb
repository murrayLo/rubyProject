class RemoveSubjectFromLecturers < ActiveRecord::Migration[6.1]
  def change
    remove_column :lecturers, :subject, :string
    add_column :lecturers, :subject_id, :integer
  end
end