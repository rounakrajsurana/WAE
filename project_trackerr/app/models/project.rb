class Project < ApplicationRecord
    has_many :project_students
    has_many :students, through: :project_students

    validates_uniqueness_of :email
end
