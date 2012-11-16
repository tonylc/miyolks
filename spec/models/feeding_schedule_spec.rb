require 'spec_helper'

describe FeedingSchedule do
  describe "before save" do
    let(:now) { DateTime.new(2012,11,11) }
    subject { FeedingSchedule.create }

    before do
      DateTime.stubs(:now).returns(now)
    end

    it "should set the start time to now before save" do
      subject.start.should == now
    end
  end
end
