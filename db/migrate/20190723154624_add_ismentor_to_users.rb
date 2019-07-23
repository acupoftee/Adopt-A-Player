class AddIsmentorToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :is_mentor, :boolean
  end
end
