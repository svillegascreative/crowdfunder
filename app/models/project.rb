class Project < ActiveRecord::Base
  has_many :rewards
  has_many :pledges, through: :rewards
  has_many :backers, through: :rewards
  accepts_nested_attributes_for :rewards
  validates_presence_of :title, :description, :goal, :start_date, :end_date
# Project start date must be in future
#Project end date must be later than start date
# A project's goal must be positive number
# Reward dollar_amount must be positive number
end
