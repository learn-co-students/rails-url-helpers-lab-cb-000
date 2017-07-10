class Student < ActiveRecord::Base

  after_initialize :default_value

  def to_s
    self.first_name + " " + self.last_name
  end

  private
  def default_value
    self.active ||= false
  end

end
