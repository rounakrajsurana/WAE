class CourseRegistration < ApplicationRecord
  belongs_to :user
  belongs_to :course_offerings
  
end
