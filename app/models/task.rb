class Task < ActiveRecord::Base
  attr_accessible :date, :days_before, :description, :title
end
