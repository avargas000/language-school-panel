class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :name
      t.string :age
      t.string :education
      t.string :salary

      t.timestamps
    end
  end
end
