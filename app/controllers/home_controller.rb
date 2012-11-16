class HomeController < ApplicationController
  def index
    @feedings_count = FeedingSchedule.count
    @changings_count = Change.count
    @sleepings_count = SleepingSchedule.count
  end
end
