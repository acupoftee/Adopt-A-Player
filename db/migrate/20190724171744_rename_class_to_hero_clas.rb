class RenameClassToHeroClas < ActiveRecord::Migration[5.2]
  def change
    # rename_column :shoes, :season, :season_id
    rename_column :heros, :class, :hero_class
  end
end
