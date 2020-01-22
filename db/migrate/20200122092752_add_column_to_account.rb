class AddColumnToAccount < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :gender, :integer, default: 0, null: false
    add_column :accounts, :age, :integer, default: 0, null: false
  end
end
