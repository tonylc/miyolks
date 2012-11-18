class Change < ActiveRecord::Base
  attr_accessible :pee, :poo

  validate :at_least_pee_or_poo

  before_save :set_time

  def set_time
    self.time = DateTime.now if self.time.nil?
  end

  private

  def at_least_pee_or_poo
    if !(pee || poo)
      errors[:base] << "Must have either pee or poo"
    end
  end
end
