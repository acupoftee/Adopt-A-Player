class AddSkillratingToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :skill_rating, :integer
  end
end
