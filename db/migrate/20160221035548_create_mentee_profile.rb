class CreateMenteeProfile < ActiveRecord::Migration
  def change
    create_table :mentee_profiles do |t|
      t.string :resume
      t.string :levelofeducation
      t.string :majoruniversity
    end
  end
end
