module Validatable
    extend ActiveSupport::Concern
    included do 
        validates :name, presence: true, uniqueness: true
        validates :description, presence: true, length: {minimum: 20, maximum: 100}
    end
end