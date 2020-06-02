class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.bigint :older_id
      t.bigint :volunteer_id

      t.timestamps
    end
  end
end
