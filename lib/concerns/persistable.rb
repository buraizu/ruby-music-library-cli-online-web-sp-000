module Persistable

  def self.destroy_all #Class Method
    @@all = []
  end

  def save #Instance Method
    @@all << self
  end

end
