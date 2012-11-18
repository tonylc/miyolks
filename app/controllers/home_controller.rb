class HomeController < ApplicationController
  def index
    @feedings_count = FeedingSchedule.count
    @changings_count = Change.count
    @sleepings_count = SleepingSchedule.count
    @can_end_sleep = SleepingSchedule.finish_sleep?
    @feeding = FeedingSchedule.new
    @change = Change.new
  end
end
