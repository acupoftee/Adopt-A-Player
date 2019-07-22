class AddVideoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :video, foreign_key: true
  end
end
