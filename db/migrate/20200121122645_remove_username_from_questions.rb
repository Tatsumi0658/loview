class RemoveUsernameFromQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :user_name, :string
  end
end
