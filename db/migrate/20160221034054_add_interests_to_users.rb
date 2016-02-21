class AddInterestsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :interests, :text, array: true
  end
end
