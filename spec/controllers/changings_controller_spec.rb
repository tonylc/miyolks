require 'spec_helper'

describe ChangingsController do
  describe :create do
    it "should track changing now" do
      Changing.count.should == 0

      post :create

      response.should be_success
      response.body.should be_blank
      Changing.count.should == 1
    end
  end
end
