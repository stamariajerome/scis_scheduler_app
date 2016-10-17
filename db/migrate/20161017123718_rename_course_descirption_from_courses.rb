class RenameCourseDescirptionFromCourses < ActiveRecord::Migration[5.0]
  def change
    rename_column :courses, :course_descirption, :course_description
  end
end
