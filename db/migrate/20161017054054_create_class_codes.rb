class CreateClassCodes < ActiveRecord::Migration[5.0]
  def change
    create_table :class_codes do |t|
      t.integer :class_code
    end
  end
end
