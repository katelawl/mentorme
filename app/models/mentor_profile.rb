class MentorProfile < ActiveRecord::Base
  belongs_to :user
  
  accepts_nested_attributes_for :user
  attr_accessor :interest
  
end
