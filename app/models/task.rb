class Task < ActiveRecord::Base
  attr_accessible :date, :days_before, :description, :title

  validates_presence_of :date, :days_before, :description, :title 

  belongs_to :user

  def self.pasados(user)
    pasados = select(:date).where("user_id = ? AND date <= ?", user.id, Date.today)	
    pasados
  end

end
