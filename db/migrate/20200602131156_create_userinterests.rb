class CreateUserinterests < ActiveRecord::Migration[6.0]
  def change
    create_table :userinterests do |t|
      t.bigint :user_id
      t.bigint :interest_id
      t.timestamps
    end
  end
end
