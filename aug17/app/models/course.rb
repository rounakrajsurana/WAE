class Course < ApplicationRecord
    has_many :course_offerings, dependent: :destroy
    def to_s    
        "#{self.course_code}-#{self.course_title}"
      end
end
