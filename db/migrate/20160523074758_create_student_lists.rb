class CreateStudentLists < ActiveRecord::Migration
  def change
    create_table :student_lists do |t|

      t.string      :student_id
      t.string      :name
      t.string      :student_class
      t.string      :card_id
      t.string      :password
      t.string      :email
      t.string      :cellphone

      t.timestamps null: false
    end
  end
end
