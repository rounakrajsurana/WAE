class CourseOffering < ApplicationRecord
  belongs_to :course
  def to_s    
    "#{self.course},#{self.year},#{self.semester}"
  end
end
