class DeleteSubjectTutorId < ActiveRecord::Migration[6.1]
  def change
    remove_column :subjects, :tutor_id
  end
end
