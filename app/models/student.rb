class Student < ApplicationRecord
    has_many :blogs
    has_and_belongs_to_many :courses
    has_many :student_projects
    has_many :projects, through: :student_projects

    validates :first_name, :last_name, presence: true
    validates :first_name, uniqueness: true
    validates :first_name, :last_name, length: {minimum: 3, maximum: 50}
    validates :first_name, :last_name, format: {with: /\A[a-zA-Z]+\z/, message: "only letters are allowed"}
    validates :age_of_student, presence: true, numericality: true
    after_commit :display_student_age
    validate :validate_student_Age
    def display_student_age
        if self.date_of_birth.present?
            age=Date.today.year-self.date_of_birth.year
            puts "Age of student is #{age}"
        else
            puts "not possible"
        end
    end
    def validate_student_Age
        if self.age_of_student.present?
            if age_of_student<15
                errors.add(:age, "age must be greater than 15")
            end
        end
    end


end
