class HomeController < ApplicationController
  def index
    @feedings_count = Feeding.count
    @changings_count = Changing.count
    @sleepings_count = Sleeping.count
  end
end
