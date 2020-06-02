class AddVolunteerNameTelephoneLocationBioImageToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :volunteer, :boolean
    add_column :users, :name, :string
    add_column :users, :telephone, :string
    add_column :users, :location, :string
    add_column :users, :bio, :string
    add_column :users, :image, :string
  end
end
