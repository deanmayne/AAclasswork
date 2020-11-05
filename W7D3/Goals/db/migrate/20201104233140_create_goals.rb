class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
        t.string :title, null: false
        t.string :description, null: false
        t.date :start_date, null: false
        t.date :end_date, null: false

      t.timestamps
    end
    add_index :goals, :title
  end
end
