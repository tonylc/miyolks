class FeedingSchedule < ActiveRecord::Base
  attr_accessible :bottled, :left, :start

  validates_presence_of :start
  validates :bottled, :inclusion => {:in => [true, false]}
end
