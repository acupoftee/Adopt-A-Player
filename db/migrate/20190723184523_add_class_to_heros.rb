class AddClassToHeros < ActiveRecord::Migration[5.2]
  def change
    add_column :heros, :class, :string
  end
end
