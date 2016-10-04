class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :reference_id
      t.string :grade
      t.integer :course_id

      t.timestamps null: false
    end
  end
end
