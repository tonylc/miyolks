require 'spec_helper'

describe FeedingSchedulesController do
  describe :create do
    it "should finish feed tracking" do
      FeedingSchedule.count.should == 0

      post :create, feeding_schedule: {bottled: false, left: true, start: DateTime.now}

      response.should redirect_to root_path
      FeedingSchedule.last.end.should_not be_blank
      FeedingSchedule.count.should == 1
    end
  end
end
