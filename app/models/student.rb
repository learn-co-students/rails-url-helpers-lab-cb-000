class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end


    def toggleActive
      self.active = !self.active
      self.save
      # @student.active = !@student.active
      puts "toggled Active: student is now #{self.active}"
    end
end
