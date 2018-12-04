json.extract! course, :id, :course_code, :course_title, :created_at, :updated_at
json.url course_url(course, format: :json)
