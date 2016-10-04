class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.integer :assignment_id
      t.integer :student_id
      t.string :grade

      t.timestamps null: false
    end
  end
end
