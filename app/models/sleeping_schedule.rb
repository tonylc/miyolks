class SleepingSchedule < ActiveRecord::Base
  include Timing

  attr_accessible :end

  before_save :start_time

  def self.finish_sleep?
    SleepingSchedule.last && SleepingSchedule.last.end.blank?
  end
end
