class Sleeping < ActiveRecord::Base
  include Timing

  attr_accessible :time
  before_save :set_time
end
