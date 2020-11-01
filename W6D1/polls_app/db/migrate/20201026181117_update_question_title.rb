class UpdateQuestionTitle < ActiveRecord::Migration[5.2]
  def change
    rename_column(:questions, :text, :title)
  end
end
