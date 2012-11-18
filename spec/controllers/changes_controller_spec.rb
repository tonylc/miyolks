require 'spec_helper'

describe ChangesController do
  describe :create do
    it "should track changing now" do
      Change.count.should == 0

      post :create, change: {pee: true}

      response.should redirect_to root_path
      Change.count.should == 1
    end
  end
end
