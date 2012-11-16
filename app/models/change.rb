class Change < ActiveRecord::Base
  before_save :set_time

  def set_time
    self.time = DateTime.now
  end
end
