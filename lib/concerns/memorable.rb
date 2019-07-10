module Memorable
  module ClassMethods
    def reset_all               #remember to remove self from method declaration
      self.all.clear
    end

    def count
      self.all.count
    end
  end

  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end
end
