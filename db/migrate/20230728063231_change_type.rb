class ChangeType < ActiveRecord::Migration[7.0]
 
      def up
        change_column :tables, :email, :text
      end
      def down 
        change_column :tables, :email, :string
      end
    
end
