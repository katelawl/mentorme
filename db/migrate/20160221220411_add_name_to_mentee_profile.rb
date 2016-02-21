class AddNameToMenteeProfile < ActiveRecord::Migration
  def change
    add_column :mentee_profiles, :name, :string
    add_column :mentee_profiles, :email, :string
    add_column :mentee_profiles, :password, :string
    add_column :mentee_profiles, :confirmpassword, :string
  end
end
