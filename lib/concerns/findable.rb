module Findable                     #should define method find_by_name. will be used as a class method
  module ClassMethods
    def find_by_name(name)
      self.all.detect{|object| object.name}   #detect returns the first item in block that returns true#being our (self) instances
    end
  end
end
