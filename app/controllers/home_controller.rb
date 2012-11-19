class HomeController < ApplicationController
  def index
    @feedings_count = FeedingSchedule.count
    @changings_count = Change.count
    @sleepings_count = SleepingSchedule.count
    @can_end_sleep = SleepingSchedule.finish_sleep?
    @feeding = FeedingSchedule.new
    @change = Change.new
    @last_breast_feed = FeedingSchedule.where(bottled: false).order("id desc").first
  end
end
