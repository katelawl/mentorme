class CreateMentorProfile < ActiveRecord::Migration
  def change
    create_table :mentor_profiles do |t|
      t.string :company
      t.string :jobtitle
      t.integer :yearsofexperience
    end
  end
end
