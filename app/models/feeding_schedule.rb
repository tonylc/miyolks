class FeedingSchedule < ActiveRecord::Base
  include Timing

  before_save :start_time
end
