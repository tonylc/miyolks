require 'spec_helper'

describe FeedingSchedulesController do
  describe :create do
    it "should track feeding now" do
      FeedingSchedule.count.should == 0

      post :create

      response.should be_success
      response.body.should be_blank
      FeedingSchedule.count.should == 1
    end
  end
end
