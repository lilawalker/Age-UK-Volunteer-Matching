class CreateUserinterests < ActiveRecord::Migration[6.0]
  def change
    create_table :userinterests do |t|
      t.string :user_id
      t.string :interest_id
      t.timestamps
    end
  end
end
