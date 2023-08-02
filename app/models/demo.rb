class Demo < ApplicationRecord
    include Validatable
    has_one :sub_demo
    before_create do
        puts "i will run beforee u create object"
    end

end
