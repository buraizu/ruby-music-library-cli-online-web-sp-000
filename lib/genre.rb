class Genre
  extend Concerns::Findable
  extend Persistable::ClassMethods
  include Persistable::InstanceMethods

  attr_accessor :name
  @@all = []

  def initialize(name)
    @songs = []
    @name = name
  end

  def self.all
    @@all
  end

  def self.all_sorted
    all.sort_by!{|genre| genre.name}
  end

  def self.destroy_all
    @@all = []
  end

  def save
    @@all << self
  end

  def songs
    @songs
  end

  def artists
    songs.collect{|song| song.artist}.uniq
  end

  def self.create(name)
    genre = Genre.new(name)
    @@all << genre
    genre
  end

end
