class CreateRollCalls < ActiveRecord::Migration
  def change
    create_table :roll_calls do |t|

      t.string      :student_id
      t.string      :name
      t.string      :reason
      t.boolean     :is_rollcall
      t.string      :captcha

      t.timestamps null: false
    end
  end
end
