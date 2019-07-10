module Findable                     #should define method find_by_name. will be used as a class method
  module ClassMethods
    def find_by_name(name)
      self.detect{|object| object.name}       #detect returns the first item in block that returns true
    end
  end
end
