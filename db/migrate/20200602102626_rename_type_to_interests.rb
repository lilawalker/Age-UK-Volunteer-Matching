class RenameTypeToInterests < ActiveRecord::Migration[6.0]
  def change
    rename_column :interests, :type, :name
  end
end
