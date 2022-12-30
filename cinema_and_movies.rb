class Cinema
  
  attr_accessor :name, :location

  def initialize(name, location)
    @name = name
    @location = location
    @movies = []
  end

  public
  def add_movie(movie)
    @movies << movie
    movie.cinema = self
  end

end


class Movie

  attr_reader :title

  @@all = []

  def initialize(title, showtime)
    @title = title
    @showtime = showtime
    @@all << self
  end

  public
  def showtime=(showtime)
    @showtime = showtime
  end

  def cinema=(cinema)
    @cinema = cinema
  end

  protected
  def showtime
    @showtime
  end

  def cinema
    @cinema
  end

end

cobble_hill = Cinema.new('Cobble Hill', 'New York')
spiderman = Movie.new('Spiderman', '8:00 PM')
cobble_hill.add_movie(spiderman)
puts spiderman.inspect