class RenameColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :students, :age, :age_of_student
  end
end
