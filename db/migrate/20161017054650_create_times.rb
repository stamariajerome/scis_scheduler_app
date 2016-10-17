class CreateTimes < ActiveRecord::Migration[5.0]
  def change
    create_table :times do |t|
      t.string :time
    end
  end
end
