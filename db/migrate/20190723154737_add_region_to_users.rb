class AddRegionToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :region, :string
  end
end
