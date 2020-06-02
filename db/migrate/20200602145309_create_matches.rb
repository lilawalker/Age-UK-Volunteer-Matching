class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.string :user_id
      t.string :volunteer_id

      t.timestamps
    end
  end
end
