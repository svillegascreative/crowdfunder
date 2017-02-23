class Project < ActiveRecord::Base
  has_many :rewards
  has_many :pledges, through: :rewards
  has_many :backers, through: :rewards
  accepts_nested_attributes_for :rewards
  validates_presence_of :title, :description, :goal, :start_date, :end_date
  validate :start_date_in_future
  validate :end_date_after_start_date
  validates :goal, numericality: {greater_than: 0}


  def start_date_in_future
    if start_date.present? && start_date < Date.today
        errors.add(:start_date, "Your project cannot start before today")
     end
  end

  def end_date_after_start_date
    if end_date.present? && end_date <= start_date
      errors.add(:end_date, "Your project cannot end before it starts! duhhhh")
    end
  end



end
