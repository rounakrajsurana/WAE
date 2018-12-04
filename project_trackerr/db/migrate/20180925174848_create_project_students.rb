class CreateProjectStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :project_students do |t|
      t.references :project, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
