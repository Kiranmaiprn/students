class AddAndRename < ActiveRecord::Migration[7.0]
  def change
    rename_column :students, :per_addr, :permanent_addr
    add_column :students, :alternate_contace, :string
  end
end
