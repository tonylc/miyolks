require 'spec_helper'

describe Change do
  describe "before save" do
    let(:now) { DateTime.new(2012,11,11) }
    subject { Change.create(pee: true) }

    before do
      DateTime.stubs(:now).returns(now)
    end

    it "should set the time to now before save" do
      subject.time.should == now
    end

    it "should not set the time if it has already been set" do
      subject.time = DateTime.new(2011,1,1)
      subject.save!
      subject.time.should == DateTime.new(2011,1,1)
    end
  end

  describe "validations" do
    it "should have either pee, poo or both but not neither" do
      Change.new(pee: true).valid?.should be_true
      Change.new(poo: true).valid?.should be_true
      Change.new(pee: true, poo: true).valid?.should be_true
      Change.new(pee: false, poo: false).valid?.should be_false
    end
  end
end
