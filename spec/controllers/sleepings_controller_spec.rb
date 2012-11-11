require 'spec_helper'

describe SleepingsController do
  describe :create do
    it "should track sleeping now" do
      Sleeping.count.should == 0

      post :create

      response.should be_success
      response.body.should be_blank
      Sleeping.count.should == 1
    end
  end
end
