class DropInterestsUsers < ActiveRecord::Migration[6.0]
  def change
    drop_table :interests_users
  end
end
