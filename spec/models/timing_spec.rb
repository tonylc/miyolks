require 'spec_helper'

describe Timing do
  describe :start_time do
    let(:now) { DateTime.new(2012,11,11) }

    before do
      DateTime.stubs(:now).returns(now)
    end

    it "should set time method to now" do
      obj = MockObj.new
      obj.start_time
      obj.start.should == now
    end
  end

  class MockObj
    include Timing
    attr_accessor :start
  end
end
