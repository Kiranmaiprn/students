class Addcolumnto < ActiveRecord::Migration[7.0]
  def change
    add_column :clients, :name, :string
    add_column :clients, :age, :integer
  end
end
