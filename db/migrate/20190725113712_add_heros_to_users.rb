class AddHerosToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :hero, foreign_key: true
  end
end
