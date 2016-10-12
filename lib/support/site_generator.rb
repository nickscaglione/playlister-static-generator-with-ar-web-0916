class SiteGenerator

  attr_reader :rendered_path

  def initialize(rendered_path)
    @rendered_path = rendered_path
  end

  # def call(env)
  #    request = Rack::Request.new(env)
  #    if request.get? && request.path == '/'
  #      render('index.html.erb')
  #    elsif request.get? && request.path == '/artists'
  #      if request.params["id"]
  #        @artist = Artist.find(request.params["id"])
  #        render('artists/show.html.erb')
  #      else
  #        @artists = Artist.all
  #        render('artists/index.html.erb')
  #      end
  #
  #    elsif request.get? && request.path == '/genres'
  #      if request.params["id"]
  #        @genre = Genre.find(request.params["id"])
  #        render('genres/show.html.erb')
  #      else
  #        @genres = Genre.all
  #        render('genres/index.html.erb')
  #      end
  #
  #    elsif request.get? && request.path == '/songs'
  #      if request.params["id"]
  #        @song = Song.find(request.params["id"])
  #        render('songs/show.html.erb')
  #      else
  #        @songs = Song.all
  #        render('songs/index.html.erb')
  #      end
  #
  #    else
  #      response = Rack::Response.new('<h1>Nothing here</h1>', 404)
  #    end
  #  end

  def build_index
    template = File.read("views/index.html.erb")
    result = ERB.new(template).result(binding)
    response = Rack::Response.new(result)
  end

  def build_artists_index
    template = File.read("../../app/views/#{rendered_path}")
    result = ERB.new(template).result(binding)
    response = Rack::Response.new(result)
  end

  def build_artist_page
  end

  def build_genres_index
  end

  def build_genre_page
  end

  def build_songs_index
  end

  def build_song_page
  end

  #
  # def rendered_path
  #   template = File.read("./app/views/#{path}")
  #   result = ERB.new(template).result(binding)
  #   Rack::Response.new(result)
  # end

end
