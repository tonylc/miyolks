require 'spec_helper'

describe SleepingSchedulesController do
  describe :create do
    it "should track sleeping now" do
      SleepingSchedule.count.should == 0

      post :create

      response.should be_success
      response.body.should be_blank
      SleepingSchedule.count.should == 1
    end
  end
end
