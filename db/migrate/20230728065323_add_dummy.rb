class AddDummy < ActiveRecord::Migration[7.0]
  def change
    reversible do |dir|
      dir.up do 
        10.times do |i|
          puts "creating demo #{i+1}"
          Table.create(name: "table #{i+1}", email: "description #{i+1}")
        end
      end
      dir.down do
        10.times do |i|
          puts "delting demo #{i+1}"
          Table.find_by(name: "table #{i+1}").destroy
        end
      end
    end
  end
end
