class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :star_date
      t.datetime :end_date
      t.string :location
      t.text :agenda
      t.text :address
      t.integer :organizer_id
      t.date :created_at
      t.string :time
      t.date :updated_at
      t.string :time

      t.timestamps null: false
    end
  end
end
