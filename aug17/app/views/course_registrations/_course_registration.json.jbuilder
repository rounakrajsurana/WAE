json.extract! course_registration, :id, :user_id, :course_offerings_id, :grade, :created_at, :updated_at
json.url course_registration_url(course_registration, format: :json)
