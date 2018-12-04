class CreateCourseRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :course_registrations do |t|
      t.references :user, foreign_key: true
      t.references :course_offerings, foreign_key: true
      t.string :grade

      t.timestamps
    end
  end
end
