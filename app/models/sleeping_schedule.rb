class SleepingSchedule < ActiveRecord::Base
  attr_accessible :end

  before_save :start_time

  def self.finish_sleep?
    SleepingSchedule.last && SleepingSchedule.last.end.blank?
  end

  private

  def start_time
    self.start = DateTime.now
  end
end
