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

  describe :end_sleep do
    let(:pre_sleep) { SleepingSchedule.create }
    let(:current_sleep) { SleepingSchedule.create }

    before do
      pre_sleep.end.should be_nil
      current_sleep.end.should be_nil
    end

    it "should set end timer for the last sleeping schedule" do
      post :end_sleep

      response.should be_success
      response.body.should be_blank

      pre_sleep.reload.end.should be_nil
      current_sleep.reload.end.should_not be_nil
    end
  end
end
