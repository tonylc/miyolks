require 'spec_helper'

describe ChangesController do
  describe :create do
    it "should track changing now" do
      Change.count.should == 0

      post :create

      response.should be_success
      response.body.should be_blank
      Change.count.should == 1
    end
  end
end
