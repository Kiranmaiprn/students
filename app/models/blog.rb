class Blog < ApplicationRecord
    belongs_to :student
    validates :title, presence: true, uniqueness: true
    validates :content, presence: true, length: { minimum: 10 }
end
