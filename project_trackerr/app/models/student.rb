class Student < ApplicationRecord
    has_many :project_students
    has_many :students, through: :project_students
end
