class AddColumns < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :local_addr, :string
    add_column :students, :per_addr, :string
  end
end
