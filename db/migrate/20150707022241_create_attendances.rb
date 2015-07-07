class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.intenger :user_id
      t.intenger :event_id

      t.timestamps null: false
    end
  end
end
