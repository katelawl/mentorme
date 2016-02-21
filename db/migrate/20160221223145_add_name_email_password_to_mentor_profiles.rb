class AddNameEmailPasswordToMentorProfiles < ActiveRecord::Migration
  def change
    add_column :mentor_profiles, :name, :string
    add_column :mentor_profiles, :email, :string
    add_column :mentor_profiles, :password, :string
  end
end
