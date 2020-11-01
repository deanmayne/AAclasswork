class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
        t.string :color, null: false
        t.string :name, null: false
        t.string :sex, null: false
        t.date :birth_date, null: false
        t.text :description

      t.timestamps
    end
  end
end
