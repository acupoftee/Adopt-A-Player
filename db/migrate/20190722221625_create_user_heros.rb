class CreateUserHeros < ActiveRecord::Migration[5.2]
  def change
    create_table :user_heros do |t|
      t.references :hero, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
