class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :name
      t.datetime :due_date
      t.integer :course_id

      t.timestamps null: false
    end
  end
end
