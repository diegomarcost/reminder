class Task < ActiveRecord::Base
  attr_accessible :date, :days_before, :description, :title

  validates_presence_of :date, :days_before, :description, :title 

  belongs_to :user

  def self.past(user)
    past = where("user_id = ? AND date < ?", user.id, Date.today)
    past
  end

  def self.future(user)
    future = where("user_id = ? AND date >= ?", user.id, Date.today)
    future
  end

end
