class AddAuthorId < ActiveRecord::Migration[5.2]
  def change
    add_column :goals, :author_id, :integer, null: false
  end
end
