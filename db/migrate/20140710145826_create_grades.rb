class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.string :name
      t.float :score
      t.integer :subject_id
      t.integer :student_id

      t.timestamps
    end
  end
end
