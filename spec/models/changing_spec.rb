require 'spec_helper'

describe Changing do
  describe "before save" do
    let(:now) { DateTime.new(2012,11,11) }
    subject { Changing.create }

    before do
      DateTime.stubs(:now).returns(now)
    end

    it "should set the time to now before save" do
      subject.time.should == now
    end
  end
end
