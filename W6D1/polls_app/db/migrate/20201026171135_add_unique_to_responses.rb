class AddUniqueToResponses < ActiveRecord::Migration[5.2]
  def change
     add_index :responses, [:user_id, :answer_choice_id], unique: true
  end
end
