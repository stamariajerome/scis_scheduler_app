class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.integer :class_code_id
      t.string :course_descirption
      t.integer :day_id
      t.integer :unit
      t.string :time_id
    end
  end
end
