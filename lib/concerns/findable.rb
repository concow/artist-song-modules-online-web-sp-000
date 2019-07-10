module Findable                     #should define method find_by_name. will be used as a class method
  module ClassMethods
    def find_by_name(name)
      self.detect{|object| object.name == name}
    end
  end
end
