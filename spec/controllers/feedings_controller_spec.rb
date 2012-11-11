require 'spec_helper'

describe FeedingsController do
  describe :create do
    it "should track feeding now" do
      Feeding.count.should == 0

      post :create

      response.should be_success
      response.body.should be_blank
      Feeding.count.should == 1
    end
  end
end
