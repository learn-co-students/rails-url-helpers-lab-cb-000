class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def full_name
    first_name + " " + last_name
  end
end
