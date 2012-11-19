require 'spec_helper'

describe SleepingSchedule do
  describe "before save" do
    let(:now) { DateTime.new(2012,11,11) }
    subject { SleepingSchedule.create }

    before do
      DateTime.stubs(:now).returns(now)
    end

    it "should set the start time to now before save" do
      subject.start.should == now
    end

    it "should not set the start time if it already has been set" do
      sleeping = SleepingSchedule.new
      sleeping.start = DateTime.new(2011,1,1)
      sleeping.save
      sleeping.start.should_not == now
    end
  end

  describe ".finish_sleep?" do
    it "should return true if last session hasn't ended" do
      sleep = SleepingSchedule.new(end: nil)
      SleepingSchedule.stubs(last: sleep)

      SleepingSchedule.finish_sleep?.should be_true
    end

    it "should return false if last session has ended" do
      sleep = SleepingSchedule.new(end: DateTime.new)
      SleepingSchedule.stubs(last: sleep)

      SleepingSchedule.finish_sleep?.should be_false
    end

    it "should return false if there is no last session" do
      SleepingSchedule.stubs(last: nil)

      SleepingSchedule.finish_sleep?.should be_false
    end
  end
end
