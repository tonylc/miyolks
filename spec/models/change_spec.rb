require 'spec_helper'

describe Change do
  describe "before save" do
    let(:now) { DateTime.new(2012,11,11) }
    subject { Change.create }

    before do
      DateTime.stubs(:now).returns(now)
    end

    it "should set the time to now before save" do
      subject.time.should == now
    end
  end
end
