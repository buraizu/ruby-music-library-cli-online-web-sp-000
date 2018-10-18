module Persistable

  module ClassMethods
    def self.destroy_all #Class Method
      @@all = []
    end
  end

  def save #Instance Method
    @@all << self
  end

end
